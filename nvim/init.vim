set nocompatible
syntax on
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set incsearch
set scrolloff=8
set ignorecase
set signcolumn
set colorcolumn=80
set termguicolors

let mapleader = ','
let g:user_emmet_leader_key=','

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'MaskRay/ccls'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joshdick/onedark.vim'

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-python',
	\ 'coc-diagnostic',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-tailwindcss',
	\ 'coc-htmlhint',
	\ 'coc-pairs'
    \]

call plug#end()
colorscheme onedark
command! -nargs=0 Prettier :CocCommand prettier.formatFile
map <silent> <C-n> :NERDTreeFocus<CR>


