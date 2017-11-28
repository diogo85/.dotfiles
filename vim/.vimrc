execute pathogen#infect()
syntax on
filetype plugin indent on
set termguicolors
set background=dark

" Selecionando o tema
" colorscheme solarized
" colorscheme onedark
" colorscheme one
" colorscheme anderson
colorscheme tender

" Configurações iniciais
:set number
:set shiftwidth=2
:let mapleader = "-"

" Configurações específicas de linguagens
" Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set encoding=utf-8 |
    \ set fileformat=unix

" Web
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

" Configurações específicas de plugins
" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configurando o Airline:
" let g:airline_theme='onedark'
let g:airline_theme='tender'
