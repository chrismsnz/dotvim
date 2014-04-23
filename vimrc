" Pathogen setup
call pathogen#infect()
syntax on
filetype plugin indent on

" Font and colours
"set guifont=Inconsolata:h14
set gfn=Inconsolata\ 10
set t_Co=256
colorscheme mustang

" Enable new features and forget backwards compatibility
set nocompatible

" Stop VIM loading it's settings from modelines within files
set modelines=0

" Set leader to comma
let mapleader = ","

" Misc. options
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
"set visualbell set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

" Options for searching
" nnoremap / /\v
" vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" Show invisibles
set list
" set listchars=tab:▸\ ,eol:¬,trail:.
set listchars=tab:▸\ ,trail:.

" allow jj to leave insert mode
inoremap jj <ESC>

" Shortcut to reload vim config
nnoremap <leader>r :source ~/.vimrc<cr>

" Project search using ack
nnoremap <leader>a :Ack 
let g:ackprg="ack-grep -H --nocolor --nogroup --column" " Required for debian/ubuntu

" Command-t setup
let g:CommandTMaxFiles=50000

" Project tree
nnoremap <leader>f :NERDTreeToggle<cr>
nnoremap <leader>F :NERDTreeFind<cr>
let NERDTreeIgnore = ['\.pyc$']

" Tag list
nnoremap <leader>m :TlistToggle<cr>
let Tlist_Sort_Type = "name"
let Tlist_Show_One_File = 1

" Set tabs for mightyape
autocmd BufNewFile,BufRead /home/csmith/Development/mightyape/* set nowrap ts=4 sw=4 wildignore=.git

" Puppet files
autocmd BufNewFile,BufRead *.pp setf puppet

" Mako
autocmd BufNewFile,BufRead *.mako setf mako

" Go
autocmd BufNewFile,BufRead *.go setf go

" Tex classes
autocmd BufNewFile,BufRead *.cls setf tex

" Django
autocmd BufNewFile,BufRead *.html setf htmldjango
