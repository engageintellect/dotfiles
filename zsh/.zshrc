#            _                                        _     _
#       ___ | |__        _ __ ___  _   _      _______| |__ | |
#      / _ \| '_ \ _____| '_ ` _ \| | | |____|_  / __| '_ \| |
#     | (_) | | | |_____| | | | | | |_| |_____/ /\__ \ | | |_|
#      \___/|_| |_|     |_| |_| |_|\__, |    /___|___/_| |_(_)
#                                  |___/
#
#ThinkPad X220
# Version 2.5


#===[ SOURCE PYWAL COLORS ]===#
. "${HOME}/.cache/wal/colors.sh"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/r3dux/.oh-my-zsh"

#===[ THEME ]===#
# ZSH_THEME="random"
# ZSH_THEME="agnoster"
ZSH_THEME="nanotech"
# ZSH_THEME="gallois"
#ZSH_THEME="theunraveler"
# ZSH_THEME="wedisagree"
# ZSH_THEME="superjarin"
# ZSH_THEME="eastwood"
# ZSH_THEME="jbergantine"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# ZSH_THEME="gnzh"
# ZSH_THEME="kardan"
# ZSH_THEME="fox"
# ZSH_THEME="josh"
# ZSH_THEME="aussiegeek"
# ZSH_THEME="robbyrussell"
# ZSH_THEME="afowler"

#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" )

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=1
# DISABLE_MAGIC_FUNCTIONS=true
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git
         fzf
         zsh-autosuggestions
         zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

## Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


#===[ ALIASES ]===#
source ~/.config/zsh/zsh_aliases


#===[ PYWAL ]===#
(cat ~/.cache/wal/sequences &)
# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences
# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh


#===[ VI MODE ]===#
bindkey -v


#===[ FZF SEARCH ]===#
[ -f ~/.bin/fzf/.fzf.zsh ] && source ~/.bin/fzf/.fzf.zsh


##===[ TMUX ]===#
#[[ $- != *i* ]] && return
## Otherwise start tmux
#[[ -z "$TMUX" ]] && exec tmux


##===[ NODE VERSION MANAGER ]===#
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_commands


#===[ ZSH RUNTIME ]===#
clear && pfetch && python ~/code/python/tools/fortune.py
