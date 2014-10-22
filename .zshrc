# ~/.zshrc

######################
# Oh-my-zsh configs
######################
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# zsh theme
ZSH_THEME="blue_and_green"

source $ZSH/oh-my-zsh.sh

plugins=(git)

######################
# User configuration
######################

export EDITOR="vim"

# zsh history 
export HISTSIZE=2000 
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups

# Change dir without writing cd
setopt autocd

export PATH="/home/eugen/.rvm/gems/ruby-2.1.3/bin:/home/eugen/.rvm/gems/ruby-2.1.3@global/bin:/home/eugen/.rvm/rubies/ruby-2.1.3/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/eugen/.rvm/bin:/home/eugen/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"


if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [  $TERM != "screen" ]; then
    #tmux attach -t hack || tmux new -s hack; exit
    tmux attach || tmux new; exit
  fi
fi
