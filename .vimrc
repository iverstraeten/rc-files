syntax enable

set backspace=indent,eol,start
let mapleader=','
set number
set linespace=15

"visuals"
colorscheme atom-dark-256

"search"
set hlsearch
set incsearch

"mappings"
"fast .vimrc editing"
nmap ,ev :tabedit $MYVIMRC<cr>

"execute python fast"
autocmd FileType python nnoremap <buffer> <Leader><space> :exec '!python' shellescape(@%, 1)<cr>

"execute c fast"

autocmd filetype c nnoremap <Leader><space> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
 
"source vim on reload"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim


