# get external scripts and aliases
fpath=($ZDOTDIR/external $fpath)
source "$XDG_CONFIG_HOME/zsh/aliases"

# vim movement
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -U compinit; compinit

# autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh
autoload -Uz prompt_purification_setup; prompt_purification_setup

# push the current directory visited on to the stack.
setopt AUTO_PUSHD
# do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS
# do not print the directory stack after using
setopt PUSHD_SILENT

bindkey -v
export KEYTIMEOUT=1

# cursor
autoload -Uz cursor_mode && cursor_mode

# cmd edit
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# bd
source ~/dotfiles/zsh/external/bd.zsh

# fuzzy find
if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# auto start x
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# clearing the shell is now done with CTRL+g
bindkey -r '^l'
bindkey -r '^g'
bindkey -s '^g' 'clear\n'

# get tmuxp patterns on start
source $DOTFILES/zsh/scripts.sh
ftmuxp

# syntax higlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

