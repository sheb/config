syn on
set nocompatible
set autoindent
set nobackup
set tabstop=4
set shiftwidth=4
set wildmenu
set encoding=utf-8
set expandtab
set hls
set nu
set mouse=
set paste

filetype on
filetype plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete

" %% expand to the path of the current open file
cabbr <expr> %% expand('%:p:h')

winpos 654 36
set lines=50
set columns=150
