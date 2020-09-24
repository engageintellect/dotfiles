"                       _                      
" _ __   ___  _____   _(_)_ __ ___    _ __ ___ 
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \  | '__/ __|
"| | | |  __/ (_) \ V /| | | | | | | | | | (__ 
"|_| |_|\___|\___/ \_/ |_|_| |_| |_| |_|  \___|
"##############################################
"
" BUILD: Universal
" VERSION: 1
"
"
" PLUGINS "
call plug#begin('~/.config/nvim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'mboughaba/i3config.vim'
Plug 'dylanaraps/wal.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
call plug#end()


" KEYBINDINGS "
nnoremap <silent> <C-q> :q<CR>
nnoremap <silent> <C-t> :FZF<CR>
nnoremap <silent> <C-f> :NERDTree<CR>
nnoremap <silent> <C-g> :Goyo<CR>


" PYWAL "
colorscheme wal
set background=dark


" LIGHTLINE COLORSCHEME "
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


" SETTINGS "
let NERDTreeShowHidden=1
set filetype=i3config
set number
set relativenumber
"set cursorline
"set cursorcolumn
set autoindent
set expandtab
set filetype
set shiftwidth=4
set tabstop=4
set smarttab
set hlsearch
set ignorecase
set incsearch
set smartcase
set wildmenu
set mouse=a
set title
"set syntax enable
"set set hidden                      
set nowrap                      
set ruler
set cmdheight=1
set splitbelow
set splitright
"set showtabline=2
set updatetime=300
set noswapfile


" KITE "
let g:kite_supported_languages = ['python']


" CURSOR BLOCK STYLE "
set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25-Cursor,r-cr-o:hor20

