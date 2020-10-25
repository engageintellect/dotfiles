#        _                                        _     _
#   ___ | |__        _ __ ___  _   _      _______| |__ | |
#  / _ \| '_ \ _____| '_ ` _ \| | | |____|_  / __| '_ \| |
# | (_) | | | |_____| | | | | | |_| |_____/ /\__ \ | | |_|
#  \___/|_| |_|     |_| |_| |_|\__, |    /___|___/_| |_(_)
#                              |___/
# ThinkPad X220
# Version 2.5

###[ SOURCE PYWAL COLORS ]###
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

###[ THEME ]###
#ZSH_THEME="random"
ZSH_THEME="nanotech"
#ZSH_THEME="gallois"
#ZSH_THEME="theunraveler"
#ZSH_THEME="wedisagree"
#ZSH_THEME="superjarin"
#ZSH_THEME="eastwood"
#ZSH_THEME="jbergantine"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="gnzh"
#ZSH_THEME="kardan"
#ZSH_THEME="fox"
#ZSH_THEME="josh"
#ZSH_THEME="aussiegeek"
#ZSH_THEME="agnoster"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="afowler"

#ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" )

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# DISABLE_UPDATE_PROMPT="true"
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

###[ ALIASES ]###
alias config='/usr/bin/git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME'
alias t='tree'
alias url='~/bin/surf_by_url'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias iwd='iwctl'
alias surf='surf -N'
alias pyserver='python -m http.server 8080'
alias sp='/home/r3dux/bin/pacsearch.sh'
alias rp='/home/r3dux/bin/pacremove.sh'
alias v='nvim $(fzf)'
alias s='python ~/bin/searcher.py'
alias ff='fzf'
alias xf='sudo fff'
alias del='rm -rf'
alias h='cd'
alias covid='python3 ~/code/python/tools/covid.py'
alias arp='python3 ~/code/python/tools/arp_scanner.py'
alias vpn='python3 ~/code/python/tools/vpn-tool.py'
alias services='systemctl --type=service'
alias todo='calcurse'
alias bsprc='nvim ~/.config/bspwm/bspwmrc'
alias sxhkdrc='nvim ~/.config/sxhkd/sxhkdrc'
alias gh='surf github.com/jc9361'
alias ls='exa --icons'
alias l='ls -l'
alias ll='ls -al'
alias la='ls -a'
alias photos='sxiv -t -f ~/pictures'
alias uptime='uptime -p'
alias update-zsh='upgrade_oh_my_zsh'
alias ytop='ytop -b -f'
alias fetch='pfetch'
alias fsociety='python2 ~/code/hacking/fsociety/fsociety.py'
alias ..='cd ..'
alias audio='pavucontrol'
alias eq='qpaeq'
alias mixer='alsamixer'
alias myip='ip --color=auto a'
#alias neo='unimatrix -c white -s 92 -u abcdefghijklmnopqrstuvwxyz1234567890!@#$%'
alias neo='cmatrix'
alias i3='nvim ~/.i3/config'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias bashrc='nvim ~/.bashrc'
alias zshrc='nvim ~/.zshrc'
alias files='ranger'
alias xfiles='sudo ranger'
alias root='sudo -i'
alias yt='python3 ~/code/python/tools/youtube_dl.py'
alias transmission='transmission-cli'
alias mix='pulsemixer'

###[ PACMAN ]###
alias sync='sudo pacman --color auto -Syy'
alias update='sudo pacman --color auto -Syyu'
alias search='pacman --color auto -Ss'
alias ipkg='pacman -Si'
alias install='sudo pacman --color auto -S'
alias remove='sudo pacman --color auto -Rns'
alias paclist='pacman --color auto -Q | less'
alias psearch='pacman --color auto -Q | grep'
alias autoclean='sudo pacman -Qdt'
alias linuxtool='python3 /home/r3dux/code/python/linuxtool.py'

###[ SSH ]###
alias MBP='ssh 192.168.1.10'
alias SB2='ssh 192.168.1.29 -p 4320'
alias x220='ssh 192.168.1.12 -p 4320'
alias mom='ssh janakind-chadwick@192.168.0.9'
alias server='ssh -i "~/docs/keys/ubuntu_aws.pem" ubuntu@54.177.92.108'
###[ DMENU ALIASES ]###
alias dmenu='dmenu -fn "Hack Nerd Font -9" -h 30 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'
alias dmenu_run='dmenu_run -fn "Hack Nerd Font -9" -h 30 -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

###[ PYWAL ]###
(cat ~/.cache/wal/sequences &)
# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences
# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh

###[ VI MODE ]###
bindkey -v

###[ FZF SEARCH ]###
[ -f ~/.bin/fzf/.fzf.zsh ] && source ~/.bin/fzf/.fzf.zsh

###[ FFF ]###
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

###[ TMUX ]###
#[[ $- != *i* ]] && return
## Otherwise start tmux
#[[ -z "$TMUX" ]] && exec tmux

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_commands


###[ ZSH RUNTIME ]###
clear && pfetch && python ~/code/python/tools/fortune.py
