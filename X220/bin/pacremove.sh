#!/usr/bin/env bash

pacman -Qsq | fzf --preview='pacman -Qi {}' | xargs -o sudo pacman -Rns
