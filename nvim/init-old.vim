" sets line numbers and syntax
set number
syntax on
filetype indent plugin on
set modeline
set mouse=a

call plug#begin('~/.vim/plugged')

"Fugitive Vim Github Wrapper
Plug 'tpope/vim-fugitive'

"NerdTree
Plug 'preservim/nerdtree'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"VimTeX
Plug 'lervag/vimtex'

call plug#end()

" NerdTree stuff
autocmd vimenter * NERDTree
map <C-T> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

" Airline stuff
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"neovim-remote for latex
let g:vimtex_compiler_progname = 'nvr'

"vimtex settings
let g:vimtex_enabled = '1'
let g:tex_flavor = 'latex'
let g:vimtex_view_general_viewer = 'zathura'

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

