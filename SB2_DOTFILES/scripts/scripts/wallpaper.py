#!/usr/bin/env python3

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

    choose = input('Please pick a wallpaper:  ')
    set = 'nitrogen --save --set-scaled ~/Pictures/' + choose + '.jpg'
    sh(set)
    print('Wallpaper Set')
    pywal = 'wal -i ~/Pictures/' + choose + '.jpg'
    sh(pywal)
    print('pywal set')


setwall()

    
    



