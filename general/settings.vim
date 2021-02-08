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
