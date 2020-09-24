import os
import subprocess

def searcher():
    os.system('clear')
    print("                         _")
    print(" ___  ___  __ _ _ __ ___| |__")
    print("/ __|/ _ \/ _` | '__/ __| '_ \ ")
    print("\__ \  __/ (_| | | | (__| | | |")
    print("|___/\___|\__,_|_|  \___|_| |_|")
    print("\n")
    
    usr_input = input("> ")
    
    if usr_input != 'q':
        #search_string = f"surf 'google.com/search?&q={usr_input}'"
        search_string = f"surf 'duckduckgo.com/{usr_input}'"
        search = subprocess.call(search_string, shell=True)
        searcher()
    else:
        os.system('clear')
        quit()


searcher()
