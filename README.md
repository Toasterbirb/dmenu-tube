# dmenu-tube
dmenu version of [rofi-tube](https://github.com/Toasterbirb/rofi-tube)

Contains multiple improvements that I should probably backport to rofi-tube or just merge both scripts into one. This time the searching isn't done with awk and sed spam but rather with the invidious API and json = makes up much much cleaner script

The default instance is http://c7hqkpkpemu6e7emz5b4vyz7idjgdvgaaa3dyimmeojqbgpea3xqjoid.onion and it can be changed in the script by editing the $instance variable on the second line. I might add an option to toggle tor on and off if there's need for that

## Dependencies
- dmenu
- tor
- torsocks
- mpv
- jq
- coreutils
