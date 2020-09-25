#!/usr/bin/env bash

ps -aux | fzf | tr -s '[:blank:]' '\t' | cut -f2 | xargs kill
