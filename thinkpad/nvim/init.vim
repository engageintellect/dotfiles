"                       _                      
" _ __   ___  _____   _(_)_ __ ___    _ __ ___ 
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \  | '__/ __|
"| | | |  __/ (_) \ V /| | | | | | | | | | (__ 
"|_| |_|\___|\___/ \_/ |_|_| |_| |_| |_|  \___|
"##############################################


call plug#begin('~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
Plug 'dylanaraps/wal.vim'



call plug#end()

" Pywal Colorscheme
colorscheme wal

set background=dark

let NERDTreeShowHidden=1

" i3 syntax
:set filetype=i3config
"
" line numbers
:set number
:set relativenumber
:set cursorline
":set cursorcolumn
:set autoindent
:set expandtab
:set filetype
:set shiftwidth=4
:set smarttab
:set tabstop=4
:set hlsearch
:set ignorecase
:set incsearch
:set smartcase
:set wildmenu
:set mouse=a
:set title
"set syntax enable                   
"set set hidden                      
set nowrap                      
set ruler
set cmdheight=1
set splitbelow
set splitright
"set showtabline=2
set updatetime=300

