set nocompatible

runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

filetype indent plugin on

" Syntax highlighting
syntax on
colorscheme molokai

" Custom leader key
let mapleader=","

" Status line config
set ruler
set showcmd
set showmode

" File encoding
set encoding=utf-8

" Indentation configuration
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set shiftround

" Searching configuration
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Editing configuration
set scrolloff=3
set backspace=indent,eol,start
set nonumber
set numberwidth=4
nnoremap <leader>n :set number!<CR>
nnoremap <leader>N :set relativenumber!<CR>
set autoread
set hidden

" Completion configuration
set wildmenu
set wildmode=longest:list
set wildignorecase

" Spelling
set nospell
nnoremap <leader>s :setlocal spell!<CR>
set spelllang=en_nz

" history 
set history=2000
set undolevels=2000

" Don't show invisibles, but allow them to be turned on with ,i
set nolist
set listchars=tab:▸\ ,trail:.
nnoremap <leader>i :setlocal list!<CR>

" Reload vimrc with ,r
nnoremap <leader>r :source ~/.vimrc<cr>
