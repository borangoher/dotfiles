# get colors and terminal
xrdb -merge $HOME/.config/X11/.Xresources
urxvtd -o -q -f
udiskie &

# configure monitors
xrandr --output DP-2 --primary --mode 2560x1440 --rate 165 --output DP-4 --mode 1920x1080 --rate 60 --left-of DP-2 --rotate right

# caps to ctrl/esc
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&

exec i3

