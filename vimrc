" VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Plugin 'kaicataldo/material.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
"########################################################################## 



set number
syntax on
set autoindent
set softtabstop=4
"set smartindent
"set cindent
"set hlsearch

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
"packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
"silent! helptags ALL

" Example mouse settings.
" You will need to try different settings, depending on your terminal.
set mouse=a
set ttymouse=xterm

" Enable completion where available.
" This setting must be set before ALE is loaded.
"let g:ale_completion_enabled = 1

" Ale hover
"let g:ale_set_ballons = 1
colorscheme desert
" colorscheme zenburn
" let g:material_theme_style = 'palenight-community'
" colorscheme material
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch
set foldenable
" set foldmethod=indent

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set expandtab
au BufRead,BufNewFile *.h set expandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
set expandtab           " enter spaces when tab is pressed
" set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line

" ------------------------------------------------------------------------- 
" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4       |
    \ set softtabstop=4   |
    \ set shiftwidth=4    |
    \ set textwidth=75    |
    \ set expandtab       |
    \ set autoindent      |
    "\ | set fileformat=unix

"au BufNewFile,BufRead *.js *.html *.css
au BufNewFile,BufRead *.html
    \ set tabstop=2      |
    \ set softtabstop=2  |
    \ set shiftwidth=2   |
    \ set textwidth=75   |
    \ set expandtab      |
    \ set autoindent     |
    "\ | set fileformat=unix
au BufNewFile,BufRead *.js
    \ set tabstop=2      |
    \ set softtabstop=2  |
    \ set shiftwidth=2   |
    \ set textwidth=75   |
    \ set expandtab      |
    \ set autoindent     |
    "\ | set fileformat=unix
au BufNewFile,BufRead *.css
    \ set tabstop=2      |
    \ set softtabstop=2  |
    \ set shiftwidth=2   |
    \ set textwidth=75   |
    \ set expandtab      |
    \ set autoindent     |
    "\ | set fileformat=unix


" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8

" ------------------------------------------------------------------------- 

" Mappings
" Toggle NerdTree tabbed
:map <C-N> :NERDTreeTabsToggle <CR>
:map <C-T> :tabe <CR>
