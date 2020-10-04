#!/bin/sh

# Scratchpad terminal for BSPWM.

id=$(xdo id -n scratchy);
if [ -z "$id" ]; then
  xst -n scratchy -e zsh -c "tmux new-session -A -s scratchy"
else
  action='hide';
  if [[ $(xprop -id $id | awk '/window state: / {print $3}') == 'Withdrawn' ]]; then
    action='show';
  fi
  xdo $action -n scratchy
fi
