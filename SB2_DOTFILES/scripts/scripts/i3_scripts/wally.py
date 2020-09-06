#!/usr/bin/python3

import os
import subprocess

def setwall():
    pic = subprocess.getoutput('sxiv -t -o ~/pictures') 
    os.system('nitrogen --save --set-zoom-fill ' + pic)
    os.system('wal -i ' + pic)

setwall()
