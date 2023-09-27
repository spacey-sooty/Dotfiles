" set calls
set nocompatible
set nu rnu
set cursorline
set cursorcolumn
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set incsearch
set showcmd
set showmode
set showmatch
set hlsearch
set termguicolors

" misc calls
colorscheme catppuccin_mocha
filetype on
filetype plugin on
filetype indent on

" remaps
nnoremap ; :
let mapleader = "\<space>"
nnoremap <leader>pv :Ex<cr>

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
