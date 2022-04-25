#!/bin/bash
instance="http://c7hqkpkpemu6e7emz5b4vyz7idjgdvgaaa3dyimmeojqbgpea3xqjoid.onion"

[ -n "$1" ] && query="$1" || query=$(dmenu -p "Search invidious" <<< "")

# Cleanup the query
query=$(sed 's/[[:space:]]/+/g' <<< $query)
[ -z $query ] && exit 0
echo "Query: $query"

# Get results with curl
results=$(curl -s --socks5-hostname 127.0.0.1:9050 ${instance}/api/v1/search?q=${query})
title_list=$(jq -r ".[].title" <<< $results)
title_id_list=$(jq ".[] | { title, videoId }" <<< $results)
selected_title=$(dmenu -l 10 -p "Results" <<< $title_list)
[ -z "$selected_title" ] && exit 0
video_id=$(grep -B1 -A2 "$selected_title" <<< $title_id_list | jq -r ".videoId")

url="${instance}/watch?v=${video_id}"

echo "Selected title: $selected_title"
echo "URL: $url"

# Start playing video with mpv
torsocks mpv "$url"
