# dmenu-tube
dmenu version of [rofi-tube](https://github.com/Toasterbirb/rofi-tube) with a few improvements

Scrapes invidious for youtube video links and plays the result with mpv. Everything is done trough tor. Curl is set to use 127.0.0.1:9050 as its socks5-hostname, so if it errors out, you might want to check if tor is running and/or the port is correct. Same goes for torsocks.

The default instance is http://c7hqkpkpemu6e7emz5b4vyz7idjgdvgaaa3dyimmeojqbgpea3xqjoid.onion and it can be changed in the script by editing the $instance variable on the second line. I might add an option to toggle tor on and off if there's need for that

## Dependencies
- dmenu
- tor
- torsocks
- mpv
- jq
- coreutils
