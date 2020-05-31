#!/usr/bin/python3

import os
import subprocess

def setwall():
    pic = subprocess.getoutput('sxiv -t -o ~/Pictures') 
    os.system('nitrogen --save --set-scaled ' + pic)
    os.system('wal -i ' + pic)

setwall()
