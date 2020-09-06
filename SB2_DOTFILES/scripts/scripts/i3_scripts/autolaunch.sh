#             _            _             _
#  __ _ _   _| |_ ___  ___| |_ __ _ _ __| |_
# / _` | | | | __/ _ \/ __| __/ _` | '__| __|
#| (_| | |_| | || (_) \__ \ || (_| | |  | |_
# \__,_|\__,_|\__\___/|___/\__\__,_|_|   \__|
#
# BUILD: ThinkPad X220
# VERSION: 1.0
#
#!/bin/bash

# DPI
xrandr --dpi 90

# KEY REPEAT
xset r rate 300 200

# KEYSWAP
/home/r3dux/bin/keyswap

# POWER MANAGER
killall -q xfce4-power-manager
xfce4-power-manager &

# POLYBAR
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
polybar -r new &
echo "POLYBAR LAUNCHED"

# PICOM
killall -q picom
picom &

# NITROGEN
killall -q nitrogen
nitrogen --restore &

# AUTOLOCK
killall -q xautolock blurlock
xautolock -time 20 -locker blurlock 


