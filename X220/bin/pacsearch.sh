#!/usr/bin/env bash

pacman -Ssq | fzf --preview='pacman -Si {}' | xargs -o sudo pacman -S
