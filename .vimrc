set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'msanders/snipmate.vim'
Bundle 'rstacruz/sparkup'
Bundle 'tpope/vim-surround'
Bundle 'joonty/vdebug.git'

set tabstop=4
set shiftwidth=4
set incsearch
set hlsearch
set expandtab
set cindent
set scrolljump=5
set scrolloff=3
set nowrap
set backspace=start,eol
set swapfile
set dir=~/tmp
set backupdir=~/tmp

noremap <C-B> :!php -l %<CR>

function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

noremap <tab> :tabnext<CR>
noremap <S-tab> :tabprevious<CR>

syntax on

let g:dbgPavimPort = 9009
let g:dbgPavimBreakAtEntry = 1

cabbr <expr> %% expand('%:p:h')

filetype plugin indent on
