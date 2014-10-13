#~/.zshrc


export EDITOR="vim"

# Left prompt
if [[ $EUID == 0 ]] 
then
    #          \e[1;31m - bold red, \e[1;34m - bold blue
    PROMPT=$'%{\e[1;31m%}%n %{\e[1;34m%}%~ #%{\e[0m%} ' 
else
    #          \e[1;31m - bold green, \e[1;34m - bold blue
    PROMPT=$'%{\e[1;32m%}%n %{\e[1;34m%}%~ $%{\e[0m%} ' 
fi


# Autocompl
autoload -U compinit promptinit 
compinit promptinit
# Show menu is first letter are coincided
zstyle ':completion:*' menu select=long-list select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30"
export LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}.

# Change dir without writing cd
setopt autocd

# Bindkeys
bindkey '^E' end-of-line            # Ctrl+E
bindkey '^A' beginning-of-line      # Ctrl+A
bindkey "\e[3~" delete-char


bindkey '^P' menu-expand-or-complete 
bindkey '^[[Z' reverse-menu-complete # SHIFT+TAB 

# Setting color mode of the terminal
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi

# Aliases
alias tmux="TERM=screen-256color-bce tmux"
alias t="tmux "
alias x="exit"
alias v="vim"
alias vi="vim"
alias ru="ruby"
alias ls='ls --color=auto' 
# List pacman's log
alias pcmnlog="cat /var/log/pacman.log"
# Get keycodes(in graphical enviroment). From xorg-xev package
alias xev="xev | grep -A2 --line-buffered '^KeyRelease' | sed -n '/keycode /s/^.*keycode \([0-9]*\).* (.*, \(.*\)).*$/\1 \2/p'"


[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"
fpath=(/home/eugen/.zsh/Completion/ $fpath)
source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin" 

