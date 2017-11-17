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
set splitbelow
set splitright
set t_Co=256
set laststatus=2

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

filetype off

" %% expand to the path of the current open file
cabbr <expr> %% expand('%:p:h')

"winpos 654 36
"set lines=50
"set columns=150

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
"Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"let g:SimpylFold_docstring_preview=1

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"let python_highlight_all=1

colorscheme zenburn

let g:syntastic_python_checkers = ['flake8']

nnoremap <F3> :NERDTreeToggle<CR>
