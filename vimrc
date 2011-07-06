" Pathogen setup
filetype off
call pathogen#runtime_append_all_bundles()
filetype indent plugin on

" Font and colours
"set guifont=Inconsolata:h14
set gfn=Inconsolata\ 12
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
"set nolist
"set listchars=tab:▸\ ,eol:¬

" allow jj to leave insert mode
inoremap jj <ESC>

" Shortcut to reload vim config
nnoremap <leader>r :source ~/.vimrc<cr>

" Project search using ack
nnoremap <leader>a :Ack 

" Project tree
nnoremap <leader>f :NERDTreeToggle<cr>
nnoremap <leader>F :NERDTreeFind<cr>
let NERDTreeIgnore = ['\.pyc$']

" Tag list
nnoremap <leader>m :TlistToggle<cr>
let Tlist_Sort_Type = "name"
let Tlist_Show_One_File = 1

" Set tabs for mightyape
autocmd BufNewFile,BufRead /home/csmith/Development/mightyape/* set nowrap ts=4 sw=4 

" Puppet files
autocmd BufNewFile,BufRead *.pp  setf puppet

" Enable some PHP goodies
" autocmd FileType php let php_sql_query=1
" autocmd FileType php let php_htmlInStrings=1
autocmd FileType php let php_noShortTags=1
autocmd FileType php let php_folding=0
autocmd FileType php nnoremap <leader>s :!php -l %<CR>
autocmd FileType php compiler php

" autocomplete funcs and identifiers for languages
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
