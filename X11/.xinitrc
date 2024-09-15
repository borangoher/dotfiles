# get colors and terminal
xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &

# caps to ctrl/esc
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&

exec i3

