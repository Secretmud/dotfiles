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

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

syntax on

set number
set relativenumber
set t_Co=256
set autoindent
set textwidth=80

func! WordProcessorModeEnglish()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spelllang=en_gb
endfunction

func! WordProcessorModeNorwegian()
	setlocal textwidth=80
	setlocal smartindent
	setlocal spelllang=no
endfunction

com! WPe call WordProcessorModeEnglish()
com! WPn call WordProcessorModeNorwegian()
let g:pymode_python = 'python3'
