#             _            _             _
#  __ _ _   _| |_ ___  ___| |_ __ _ _ __| |_
# / _` | | | | __/ _ \/ __| __/ _` | '__| __|
#| (_| | |_| | || (_) \__ \ || (_| | |  | |_
# \__,_|\__,_|\__\___/|___/\__\__,_|_|   \__|
#
# BUILD: ThinkPad X220
# VERSION: 1.0
#
#!/bin/sh

# DPI SCALING
xrandr --dpi 96

# KEY REPEAT
xset r rate 275 200

# KEYSWAP
/usr/bin/setxkbmap -option "caps:swapescape" &

# CLIPMENU
clipmenud &

# POWER MANAGER
killall -q xfce4-power-manager
xfce4-power-manager &

# NOTIFICATIONS
killall -q dunst
dunst &

# NITROGEN
killall -q nitrogen
while pgrep -u $UID -x nitrogen >/dev/null; do sleep 1; done
nitrogen --restore &

# PYWAL
wal -R

# ST PYWAL COLORS
python ~/bin/st_pywal.py

# DUNST PYWAL COLORS
/home/r3dux/bin/dunst_pywal.sh

# AUTOLOCK
killall -q xautolock slock
xautolock -time 20 -locker slock &

# POLYBAR
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -r new &

# PICOM/COMPTON 
killall -q picom
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done
#while compton -b; do true; done
#compton --config ~/.config/compton/compton.conf &
picom &



