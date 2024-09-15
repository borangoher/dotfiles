# dotfiles
export XDG_CONFIG_HOME="$HOME/.config"
# user specific data
export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
# user cached files
export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"

# nvim default
export EDITOR="nvim"
export VISUAL="nvim"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# history filepath
export HISTFILE="$ZDOTDIR/.zhistory"
# maximum events for internal history
export HISTSIZE=10000
# maximum events in history file
export SAVEHIST=10000

# dotfiles
export DOTFILES="$HOME/dotfiles"

# fzf and ripgrep
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

