# Disable the CapsLock key
setxkbmap -option caps:none

# Remap keys using Xmodmap
xmodmap ~/.Xmodmap

# asdf-vm completion
source ~/.asdf/asdf.fish

alias ":q"="exit"
alias "sudo"="sudo -Es"

if status is-interactive
    neofetch
end
