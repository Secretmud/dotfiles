set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'nanotech/jellybeans.vim'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'


call vundle#end()
filetype plugin indent on


syntax on
colorscheme jellybeans

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set relativenumber
set t_Co=256
set autoindent
set textwidth=80

func! WordProcessorEng()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spell spelllang=en_gb
endfunction

func! WordProcessorNor()
    setlocal textwidth=80
    setlocal smartindent
    setlocal spell spelllang=nb_NO
endfunction

com! WPe call WordProcessorEng()
com! WPn call WordProcessorNor()
let g:pymode_python = 'python3'
