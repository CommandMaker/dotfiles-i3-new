# Disable the CapsLock key
setxkbmap -option caps:none

# Remap keys using Xmodmap
xmodmap ~/.Xmodmap

if status is-interactive
    # Commands to run in interactive sessions can go here
end
