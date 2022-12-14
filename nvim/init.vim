"                       _
" _ __   ___  _____   _(_)_ __ ___    _ __ ___
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \  | '__/ __|
"| | | |  __/ (_) \ V /| | | | | | | | | | (__
"|_| |_|\___|\___/ \_/ |_|_| |_| |_| |_|  \___|
"##############################################
"
" BUILD: Universal
" VERSION: 1.5


" PLUGINS "
call plug#begin('~/.config/nvim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mboughaba/i3config.vim'
Plug 'dylanaraps/wal.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-commentary'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'

Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

"Plug 'neoclide/coc.nvim'
call plug#end()

let g:coc_disable_startup_warning = 1

" KEYBINDINGS "
nnoremap <SPACE> <Nop>
let mapleader = " "

" Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>



"nnoremap <silent> <C-q> :q<CR>
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>l :Limelight!!<CR>
" nmap <Leader>f :FZF<CR>
nmap <Leader>t :NERDTreeToggle<CR>
"nmap <Leader>t :Vexplore<CR>
nmap <Leader>g :Goyo<CR>

" STARTIFY "
let g:startify_custom_header = [""]

" PYWAL "
colorscheme wal
set background=dark


" AIRLINE "
let g:airline_theme = 'wal'

" SETTINGS "
set nocompatible
filetype plugin on
set filetype=i3config
syntax enable
set path+=**
set wildmenu
set wildmode=longest:full,full

let NERDTreeShowHidden=1
set number
set relativenumber
set autoindent
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set hlsearch
set ignorecase
set incsearch
set smartcase
set mouse=a
set title
set nowrap
set ruler
set cmdheight=1
set splitbelow
set splitright
set updatetime=300
set noswapfile

"set cursorline
"set cursorcolumn
"set set hidden
"set showtabline=1

" NETRW "
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


" KITE "
let g:kite_supported_languages = ['python']


" CURSOR BLOCK STYLE "
" set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25-Cursor,r-cr-o:hor20
