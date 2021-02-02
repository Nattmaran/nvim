" A basic vimrc
"	for optimal
" vim performance.. LoL
"
" Author: Mr. Bent
"""""""""""""""""""
"
"
"
set nocompatible
syntax on
filetype plugin on
set nowrap
set encoding=utf8
set scrolloff=7

set noswapfile
set nobackup

set number
set relativenumber
set ruler

set showcmd
set showmatch
set laststatus=2

"visual warningbell
set novisualbell

set backspace=indent,eol,start  

"
" proper tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"
"Plugged
call plug#begin('~/.config/nvim/plugged')

"vim wiki for diary
Plug 'vimwiki/vimwiki'

"file tree
Plug 'lambdalisue/fern.vim'

"match brackets
Plug 'jiangmiao/auto-pairs'
"airline
Plug 'vim-airline/vim-airline'

"autocompletion engine
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"
"BASIC STUFF
"
"enable normal mode paste
set pastetoggle=<F10>
"
"disable mouse
set mouse=
noremap <LeftDrag> <LeftMouse>
noremap!<LeftDrag> <LeftMouse>

"elite mode no arrows
let g:elite_mode=1

"syntax highlighting
"let python_highlight_all = 1

"theme & colors
set guifont=Consolas:h10

set t_Co=256
"set termguicolors
"set background=dark
colorscheme murphy

" markdown
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


"enable incremental search
set incsearch
"enable search highlighting
set hlsearch

"   MAPPINGS
"

inoremap jj <ESC>

" Disable arrow movement, resize splits instead.
if get(g:, 'elite_mode')
	nnoremap <Up>    :resize +2<CR>
	nnoremap <Down>  :resize -2<CR>
	nnoremap <Left>  :vertical resize +2<CR>
	nnoremap <Right> :vertical resize -2<CR>
endif

"vimwiki
let g:vimwiki_list = [{'auto_diary_index': 1}]
"fern
nnoremap <F2>  :Fern . -drawer -toggle<CR>
"airline
let g:airline#extensions#tabline#enabled = 1
