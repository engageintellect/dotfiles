"                       _                      
" _ __   ___  _____   _(_)_ __ ___    _ __ ___ 
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \  | '__/ __|
"| | | |  __/ (_) \ V /| | | | | | | | | | (__ 
"|_| |_|\___|\___/ \_/ |_|_| |_| |_| |_|  \___|
"##############################################
" BUILD: Universal
" VERSION: 1
"
" PLUGINS
call plug#begin('~/.config/nvim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
Plug 'dylanaraps/wal.vim'
Plug 'ap/vim-css-color'

call plug#end()

" PYWAL 
colorscheme wal
set background=dark

" LIGHTLINE COLORSCHEME
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


let NERDTreeShowHidden=1
:set filetype=i3config
:set number
:set relativenumber
":set cursorline
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
:set nowrap                      
set ruler
set cmdheight=1
set splitbelow
set splitright
"set showtabline=2
set updatetime=300

" ~/.vimrc
" Sets cursor styles
" Block in normal, line in insert, underline in replace
set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25-Cursor,r-cr-o:hor20
