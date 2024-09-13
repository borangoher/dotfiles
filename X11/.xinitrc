urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
exec i3

# keymaps
setxkbmap  -option 'caps:ctrl_modifier'; xcape -e 'Caps_Lock=Escape'&
