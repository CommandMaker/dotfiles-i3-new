# Disable the CapsLock key
setxkbmap -option caps:none

# Remap keys using Xmodmap
xmodmap ~/.Xmodmap

alias ":q"="exit"

if status is-interactive
    neofetch
end
