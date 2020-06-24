#!/usr/bin/python3

import os 

sh = os.system

def setwall():
    sh('clear')
    print("                           _ _")
    print(" _ __  _   ___      ____ _| | |")
    print("| '_ \| | | \ \ /\ / / _` | | |")
    print("| |_) | |_| |\ V  V / (_| | | |")
    print("| .__/ \__, | \_/\_/ \__,_|_|_|")
    print("|_|    |___/")
    print("\n\n")

    sh('sxiv -t -o ~/Pictures > ~/Scripts/wally_output.txt')

    with open('/home/r3dux/Scripts/wally_output.txt', 'r')as f:
        for line in f:
            sh('nitrogen --save --set-scaled' + ' ' + line)
            sh('wal -i' + ' ' + line)

setwall()

    
    



