" set background=dark

set tabstop=4
set shiftwidth=4

set incsearch
set hlsearch

set expandtab

set cindent
"set smartindent

set scrolljump=5
set scrolloff=3

set nowrap

set backspace=start,eol

noremap <C-B> :!php -l %<CR>

set swapfile
set dir=~/tmp
set backupdir=~/tmp

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
