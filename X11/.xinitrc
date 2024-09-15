urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources

# keymaps
setxkbmap -option 'caps:ctrl_modifier' xcape -e 'Caps_Lock=Escape'&

# monitor
$DOTFILES/X11/monitor.sh&

exec i3
