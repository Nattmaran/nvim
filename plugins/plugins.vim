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

"treesitter-themes
Plug 'nvim-treesitter/nvim-treesitter'

"themes
Plug 'joshdick/onedark.vim'

"git integrations
Plug 'tpope/vim-fugitive'

"fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

Plug 'honza/vim-snippets'

call plug#end()


"vimwiki
let g:vimwiki_list = [{'auto_diary_index': 1}]
"fern
nnoremap <F2>  :Fern . -drawer -toggle<CR>
"airline
let g:airline#extensions#tabline#enabled = 1

lua<<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained",
	highlight = {
		enabled = true
	}
}
EOF
