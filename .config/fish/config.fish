# Disable the CapsLock key
setxkbmap -option caps:none

# Functions needed for !! and !$ https://github.com/oh-my-fish/plugin-bang-bang
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

if [ $fish_key_bindings = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

## Fish command history
function history
    builtin history --show-time='%F %T '
end

# Remap keys using Xmodmap
xmodmap ~/.Xmodmap

# asdf-vm completion
source ~/.asdf/asdf.fish

# Some alias
alias ":q"="exit"
alias sudo="sudo -Es"
alias ls='exa -ala --color=always --group-directories-first' # preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.="exa -a | grep -E '^\.'"
alias phpbc="php bin/console"
alias !s="sudo -Es"
alias dc="USER_ID=(id -u) GROUP_ID=(id -g) docker-compose"
alias de="USER_ID=(id -u) GROUP_ID=(id -g) docker-compose exec"

if status is-interactive
    neofetch
end
