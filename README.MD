# i3 ArchLinux config 2024

This repository contain a small configuration made for ArchLinux and based on Xfce4 and i3wm (i3-gaps)

## Install

To install, just link the differents folders to their proper place like the `.Xmodmap` for example

``` bash
ln -sf $(pwd)/.Xmodmap ~/.Xmodmap
```


## Useful commands

### Find the keycode for a key

To find the keycode of a key, we can use `xev`

```bash
xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
```
