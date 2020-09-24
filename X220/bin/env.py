#  ___ _ ____   __
# / _ \ '_ \ \ / /
#|  __/ | | \ V /
# \___|_| |_|\_/
#
# Verion: 1.0 (beta)
# Build: ThinkPad X220
#
#!/usr/bin/env python3

import os
import subprocess
import time

# START SXHKD
subprocess.call('sxhkd &', shell=True)

# SETUP TOUCHPAD
os.chdir('/home/r3dux/bin/')
subprocess.call('./touchy', shell=True)

# DPI SCALING, KEY REPEAT, KEYSWAP...
subprocess.call('xrandr --dpi 96', shell=True)
subprocess.call('xset r rate 275 200', shell=True)
subprocess.call('/usr/bin/setxkbmap -option "caps:swapescape" &', shell=True)

# RELOAD PYWAL
subprocess.call('wal -R', shell=True)
subprocess.call('python st_pywal.py', shell=True)

# PROGRAMS
subprocess.call('clipmenud &', shell=True)
subprocess.call('killall -q xfce4-power-manager', shell=True)
subprocess.call('xfce4-power-manager &', shell=True)
subprocess.call('./dunst_pywal.sh', shell=True)
subprocess.call('killall -q nitrogen', shell=True)
#subprocess.call('while pgrep -u $UID -x nitrogen >/dev/null; do sleep 1; done', shell=True)
subprocess.call('nitrogen --restore &', shell=True)
subprocess.call('killall -q xautolock slock', shell=True)
subprocess.call('xautolock -time 20 -lock slock &', shell=True)
subprocess.call('killall -q polybar', shell=True)
#subprocess.call('while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done', shell=True)
subprocess.call('polybar -r new &', shell=True)
subprocess.call('killall -q picom', shell=True)
subprocess.call('while pgrep -u $UID -x picom >/dev/null; do sleep 1; done', shell=True)
subprocess.call('picom &', shell=True)

# ADJUST PADDING (~/bin/padding.sh)
subprocess.call('./padding', shell=True)


