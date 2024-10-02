#!/bin/zsh

compress () {
    # compress a directory
    
    tar cvzf $1.tar.gz $1
}

ftmuxp() {
    # fuzzy find a tmuxp config

    if [[ -n $TMUX ]]; then
        return
    fi

    # get the IDs
    ID="$(ls $XDG_CONFIG_HOME/tmuxp | sed -e 's/\.yml$//')"
    if [[ -z "$ID" ]]; then
        tmux new-session
    fi

    create_new_session="Create New Session"

    ID="${create_new_session}\n$ID"
    ID="$(echo $ID | fzf | cut -d: -f1)"

    if [[ "$ID" = "${create_new_session}" ]]; then
        tmux new-session
    elif [[ -n "$ID" ]]; then
        # Rename the current urxvt tab to session name
        printf '\033]777;tabbedx;set_tab_name;%s\007' "$ID"
        tmuxp load "$ID"
    fi
}

scratchpad() {
    # open floating scratchpad

    "$DOTFILES/zsh/scratchpad.sh"
}

vman() {
    # open man page in vim

    nvim -c "SuperMan $*"

    if [ "$?" != "0" ]; then
        echo "No manual entry for $*"
    fi
}

recon() {
  # reset internet connection
  
  nmcli networking off
  sleep 2
  nmcli networking on
}

fkill() {
  # kill firefox instance

  pgrep firefox | xargs kill
}
