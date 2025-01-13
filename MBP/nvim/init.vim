"                       _
" _ __   ___  _____   _(_)_ __ ___    _ __ ___
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \  | '__/ __|
"| | | |  __/ (_) \ V /| | | | | | | | | | (__
"|_| |_|\___|\___/ \_/ |_|_| |_| |_| |_|  \___|
"##############################################
"
" BUILD: MAC OS
" VERSION: 1.5

" PLUGINS "
call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mboughaba/i3config.vim'
Plug 'ap/vim-css-color'
Plug 'junegunn/goyo.vim'
Plug 'wuelnerdotexe/vim-astro'
Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-commentary'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'junegunn/fzf.vim'
Plug 'sindrets/diffview.nvim'
Plug 'mhinz/vim-startify'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'github/copilot.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'evanleck/vim-svelte'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'codechips/coc-svelte', {'do': 'npm install'}
Plug 'nvim-telescope/telescope.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'nvim-lua/plenary.nvim'
Plug 'psf/black', { 'branch': 'main' }
Plug 'vim-python/python-syntax'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons' " Optional, for file icons
" Add Treesitter for modern syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()


" Prettier Settings
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync

" Configure LSP for Svelte using nvim-lspconfig
au FileType svelte lua require('lspconfig').svelte.setup{}

" Configure LSP for TypeScript using nvim-lspconfig
au FileType typescript lua require('lspconfig').tsserver.setup{}

" Configure LSP for Python using nvim-lspconfig
au FileType python lua require('lspconfig').pyright.setup{}

" Add global extensions for CoC (Conquer of Completion)
let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css', 'coc-prettier', 'coc-svelte', 'coc-python', 'coc-pyright', 'coc-tailwindcss']
let g:coc_disable_startup_warning = 1

" KEYBINDINGS "
nnoremap <SPACE> <Nop>
let mapleader = " "



nnoremap <leader>r :wincmd r<cr>


" Telescope keybindings for fuzzy file search "
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>

nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>l :Limelight!!<CR>
nmap <Leader>t :NERDTreeToggle<CR>
nmap <Leader>g :Goyo<CR>

" STARTIFY "
let g:startify_custom_header = [""]

" SETTINGS "
set nocompatible
filetype plugin on
syntax enable
set path+=**
set wildmenu
set wildmode=longest:full,full

let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
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

" NETRW "
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

lua << EOF
require'nvim-treesitter.configs'.setup {
  parser_install_dir = vim.fn.stdpath("data") .. "/treesitter-parsers", -- Set custom parser directory
  ensure_installed = { "python", "typescript", "javascript", "svelte", "html", "css", "json", "lua" }, -- Add more languages as needed
  highlight = {
    enable = true,              -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
      },
    },
  },
}
EOF

" Set the color scheme
let g:gruvbox_material_enable_italic = 1 " Enable italics
colorscheme default
" set t_Co=16

" COC Keybindings for Completion
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

inoremap <silent><expr> <S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Function to check for backspace
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


lua << EOF
require('lualine').setup {
  options = {
    theme = 'molokai',   -- You can choose any theme you like
    section_separators = {'', ''},
    component_separators = {'', ''},
  }
}
EOF
