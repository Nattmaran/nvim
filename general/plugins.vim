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


"vimwiki
let g:vimwiki_list = [{'auto_diary_index': 1}]
"fern
nnoremap <F2>  :Fern . -drawer -toggle<CR>
"airline
let g:airline#extensions#tabline#enabled = 1
