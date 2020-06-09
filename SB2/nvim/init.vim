"                       _
" _ __   ___  _____   _(_)_ __ ___    _ __ ___
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \  | '__/ __|
"| | | |  __/ (_) \ V /| | | | | | | | | | (__
"|_| |_|\___|\___/ \_/ |_|_| |_| |_| |_|  \___|
"##############################################
"BUILD: SurfaceBook 2
"VERSION: 2.0

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

"let NERDTreeShowHidden=1

" i3 syntax
set filetype=i3config
"
" line numbers
set number
set relativenumber
"set cursorline
":set cursorcolumn
set autoindent
set expandtab
":set filetype
set shiftwidth=4
set smarttab
set tabstop=4
set hlsearch
set ignorecase
set incsearch
set smartcase
set wildmenu
set mouse=a
set title
set nowrap
set splitbelow
set splitright

let g:kite_supported_languages = ['python']
let g:kite_auto_complete=1
let g:kite_tab_complete=1
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2  " always display the status line


" ~/.vimrc
" Sets cursor styles
" Block in normal, line in insert, underline in replace
set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25-Cursor,r-cr-o:hor20

