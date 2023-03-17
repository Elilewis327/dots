set tabstop=4               " number of columns occupied by a tab
set softtabstop=4           " set spaces as tabs
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for auto indents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " turn on line numbers
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set spell                   " enable spell check
set mousem=extend
set splitright

" plugins

call plug#begin()
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'lervag/vimtex'
call plug#end()


" vimtex settings
let g:vimtex_compiler_method = 'latexmk'
