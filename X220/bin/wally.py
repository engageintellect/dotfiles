#!/usr/bin/python3
#               _ _
#__      ____ _| | |_   _
#\ \ /\ / / _` | | | | | |
# \ V  V / (_| | | | |_| |
#  \_/\_/ \__,_|_|_|\__, |
#                   |___/
# A python script for setting wallpaper using sxiv gui
# and generate/apply colorscheme made from wallpaper.

import os
import time
import subprocess

def setwall():
    pic = subprocess.getoutput('sxiv -t -o ~/pictures')
    if pic == '':
        quit()
    else:
        os.system('nitrogen --save --set-zoom-fill ' + pic)
        os.system('wal -i ' + pic)
        os.system('if pgrep -x bspwm; then bspc wm -r; fi')
        os.system('if pgrep -x pywalfox; then pywalfox update; fi')
    #    os.system('if pgrep -x bspwm; then bspc wm -r; sleep 3; bspc config top_padding 30; fi')
        quit()

setwall()
