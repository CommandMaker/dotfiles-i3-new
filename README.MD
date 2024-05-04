# i3 ArchLinux config 2024

This repository contain a small configuration made for ArchLinux and based on Xfce4 and i3wm (i3-gaps)

The used theme is (HackTheBox)[https://marketplace.visualstudio.com/items?itemName=silofy.hackthebox]
Wallpaper : Your Lie In April

## Install

To install, just link the differents folders to their proper place like for example the `.Xmodmap` file

``` bash
ln -sf $(pwd)/.Xmodmap ~/.Xmodmap
```
## Useful commands

### Find the keycode for a key

To find the keycode of a key, we can use `xev`

```bash
xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
```
