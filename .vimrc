set nocompatible

" Multiple cursors
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-N>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

set smartcase
set hlsearch

execute pathogen#infect()
syntax on
filetype plugin indent on
:let mapleader = ","
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:indent_guides_enable_on_vim_startup=1
let g:ctrlp_map = "<c-p>"
let g:ctrlp_cmd = 'CtrlPMixed'

nnoremap <esc> :noh<CR><esc>

