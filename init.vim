call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-commentary'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'morhetz/gruvbox'
Plug 'MaskRay/ccls'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'

call plug#end()

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
colorscheme gruvbox
map <silent> <C-n> :NERDTreeFocus<CR>

let mapleader = ','
let g:user_emmet_leader_key=','
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-python',
	\ 'coc-diagnostic',
	\ 'coc-eslint'
    \]
