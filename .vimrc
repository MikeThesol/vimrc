" Enable syntax highlighting for C
syntax enable
syntax on

" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Set indentation to 4 spaces
set cindent

" Set formatting options for C code
set formatoptions=croq

" Enable auto-completion for C
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Set compiler to GCC
compiler gcc

" Set makeprg to compile and run C code
set makeprg=gcc\ -o\ %<\ %

" Set errorformat to parse GCC errors
set errorformat=%f:%l:%c:\ %m

" Map F5 to compile and run C code
map <F5> :make<CR>

" Map F6 to toggle debugging
map <F6> :ToggleDebug<CR>

" Function to toggle debugging
function ToggleDebug()
    if &debug
        set nodbg
    else
        set dbg
    endif
endfunction

" Plugin settings
call plug#begin('~/.vim/plugged')

" Plugin for C code completion
Plug 'vim-scripts/c.vim'

" Plugin for C code formatting
Plug 'vim-scripts/cformat.vim'

call plug#end()
