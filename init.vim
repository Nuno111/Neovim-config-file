set list lcs=tab:\|\ " the last character is space!
set relativenumber
set hidden
set noerrorbells
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
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
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
		autocmd TextYankPost * if v:event.operator ==# 'y' | call system('cat |' . s:clip, @0) | endif
    augroup END
endif

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
Plug 'AndrewRadev/tagalong.vim'

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

