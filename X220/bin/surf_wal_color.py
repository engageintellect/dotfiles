import os
import subprocess


colors = subprocess.getoutput('cat ~/.cache/wal/colors').split("\n")


print(colors[0])
