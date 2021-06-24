set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set autoindent
set incsearch
set nowrap
set scrolloff=8
set ignorecase
set signcolumn=yes:1
set colorcolumn=80
set termguicolors

let mapleader = ','
let g:user_emmet_leader_key=','
let g:dracula_italic = 0

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'

let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-python',
	\ 'coc-diagnostic',
	\ 'coc-eslint',
	\ 'coc-prettier',
	\ 'coc-tailwindcss',
	\ 'coc-htmlhint',
	\ 'coc-clangd',
    \ 'coc-tsserver',
	\ 'coc-pairs'
    \]

call plug#end()
colorscheme dracula 
map <silent> <C-n> :NERDTreeFocus<CR>

autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0
