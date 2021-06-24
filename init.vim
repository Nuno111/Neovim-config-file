set relativenumber
set hidden
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smartindent
set autoindent
set incsearch
set nowrap
set scrolloff=8
set ignorecase
set signcolumn
set colorcolumn=80
set termguicolors
set nohlsearch

let mapleader = ','
let g:user_emmet_leader_key=','
let g:dracula_italic = 0
let g:polyglot_disabled = ["autoindent"]
let g:prettier#config#tab_width = 4
let g:prettier#config#use_tabs = 'true'
autocmd Filetype json
  \ let g:indentLine_setConceal = 0 |
  \ let g:vim_json_syntax_conceal = 0

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dracula/vim'
Plug 'sheerun/vim-polyglot'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

let g:coc_global_extensions = [
	\ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-python',
	\ 'coc-diagnostic',
	\ 'coc-eslint',
	\ 'coc-tailwindcss',
	\ 'coc-htmlhint',
	\ 'coc-clangd',
    \ 'coc-tsserver',
	\ 'coc-pairs'
    \]

call plug#end()

colorscheme dracula 

map <silent> <C-n> :NERDTreeFocus<CR>

