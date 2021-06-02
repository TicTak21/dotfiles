cd /Users/alex_kovalev/Desktop/Projects
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
set guifont=Hack\ Nerd\ Font:h20

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

autocmd vimenter * colorscheme onedark

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'

call plug#end()
