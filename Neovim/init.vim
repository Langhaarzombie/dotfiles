call plug#begin('~/.local/share/nvim/plugged')

" Theme
Plug 'jacoborus/tender.vim'

" Syntax Settings
Plug 'sheerun/vim-polyglot'

" Auto-closing of brackets, ...
Plug 'raimondi/delimitmate'

" Emmet
Plug 'mattn/emmet-vim'

" Airline Statusbar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zacanger/angr.vim'

" Multi Cursor
Plug 'terryma/vim-multiple-cursors'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

call plug#end()

" Needed for tmux
set t_8f=^[[38;2;%lu;%lu;%lum

" Theme settings
syntax enable
colorscheme tender

" Emmet Settings
let g:emmet_user_settings = {
\	'intendation': '	'
\}

" Airline configs
let g:airline_theme='tender'

" Markdown Syntax
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 2

" General
set number
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase


