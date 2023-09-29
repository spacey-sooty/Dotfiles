" not compatible with vi
set nocompatible

" set line numbers to hybrid (current line is absolute everything else is
" relative)
set nu rnu

" highlight cursor line and column
set cursorline
set cursorcolumn

" configure tabsize to 4 spaces
set shiftwidth=4
set tabstop=4
set expandtab

" epic status bar
set showcmd
set showmode
set showmatch
set hlsearch

" colourscheme
set termguicolors
colorscheme catppuccin_mocha

" make vim respond to filetypes
filetype on
filetype plugin on
filetype indent on

" remaps
nnoremap ; :
let mapleader = "\<space>"
nnoremap <leader>pv :Ex<cr>

" colours in tmux
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
