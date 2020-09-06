import time
import os
import subprocess

# CHECKS FOR PACMAN AND AUR UPPDATES AND SENDS NOTIFICATION TO UPDATE...

def main():
    # grab pacman output...
    updates = subprocess.getoutput('sudo pacman -Syyu')

    time.sleep(5)

    # assign alias
    a = updates

    # check end of output string for updates... 
    if updates[176:] == 'there is nothing to do':

        # send feedback to console.
        print('there was nothing to do...')

        # send dunst notification.
        notify = os.system('notify-send "NO UPDATES AVAILABLE"')
        time.sleep(5)
        quit()

    else:
        # send dunst notification.
        #notify = os.system('notify-send ' + "'" + a + "'")
        notify = os.system('notify-send "SYSTEM UPDATE AVAILABLE"')

        # 20 minute sleep 
        time.sleep(1200)

        # loop
        main()

main()
