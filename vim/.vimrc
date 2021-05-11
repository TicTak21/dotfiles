set lines=100 columns=100
set number
set linebreak
set showbreak=+++
set textwidth=120
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set ruler
set cmdheight=2

set undolevels=1000
set backspace=indent,eol,start

syntax on
set tabstop=2
set cursorline
set showcmd
set showmatch
set incsearch
set hlsearch
set foldenable
set guifont=Monaco:h20

autocmd vimenter * colorscheme gruvbox

let g:prettier#autoformat = 1

call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'prettier/vim-prettier'
Plug 'jiangmiao/auto-pairs'

call plug#end()
