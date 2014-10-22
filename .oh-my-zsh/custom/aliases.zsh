# ~/.zsh_aliases
# Aliases
alias tmux="TERM=screen-256color-bce tmux"
alias t="tmux"
alias x="exit"
alias v="vim"
alias vi="vim"
alias ru="ruby"
alias ls='ls --color=auto' 
# List pacman's log
alias pcmnlog="cat /var/log/pacman.log"
# Get keycodes(in graphical enviroment). From xorg-xev package
alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"
# Git aliases
alias ga="git add"
alias gc="git commit"
alias gp="git push"