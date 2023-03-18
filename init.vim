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
set splitright
set foldlevelstart=99
set nowrap
set hlsearch                " Highlight search results
set incsearch
set autoread
set noshowmode
set clipboard=unnamedplus
set wildmode=longest,list,full
set wildmenu
vnoremap <RightMouse> y

inoremap <Tab> <c-n>
inoremap <Nul> <c-n>

let g:lightline = {
    \ 'colorscheme' : 'dracula',
    \ 'active' : {
    \       'left' : [['mode'],['fname'],['readonly','modified']],
    \       'right' : [['lineinfo'],['filetype']]
    \   },
    \ 'component_function' : {
    \       'fname' : 'OnlyName'
    \   }
    \ }

function! OnlyName()
    return winwidth(0) > 70 ? (expand('%:p')) : ''
endfunction

" set node path for coc, otherwise breaks
let g:coc_node_path = "/home/jan/.nvm/versions/node/v18.15.0/bin/node"

" plugins
call plug#begin()
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'itchyny/lightline.vim'
call plug#end()

