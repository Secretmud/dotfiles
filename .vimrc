execute pathogen#infect()

filetype plugin indent on
syntax on
set splitbelow
set splitright
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set relativenumber
set t_Co=256
set autoindent
set textwidth=80
set background=dark
colorscheme gruvbox
set encoding=UTF-8

let g:gruvbox_contrast_dark = 'hard'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:ycm_use_clangd = 0
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

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
let g:pymode_python = "python3"
let g:tex_flavour = "latex"
