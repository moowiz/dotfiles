set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'myusuf3/numbers.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/TagHighlight'
Plugin 'bling/vim-airline'

" To make vim airline show up
set laststatus=2


Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'

Plugin 'L9'

call vundle#end()
syntax on
filetype plugin indent on
:let mapleader = ","
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" YCM goto
map <Leader><Leader>d :YcmCompleter GoTo<CR>

" ===== SYNTASTIC 
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1

" ===== Add some shortcuts for ctags
map <Leader>tt <esc>:TagbarToggle<cr>


let g:indent_guides_enable_on_vim_startup=1
let g:ctrlp_map = "<c-p>"
let g:ctrlp_cmd = 'CtrlPMixed'

nnoremap <esc> :noh<CR><esc>

