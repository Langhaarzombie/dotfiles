""""""""""""""""""""
"     GENERAL      "
""""""""""""""""""""

" Line numbers
set number

" Easier command input
set ignorecase
set smartcase

" Enable auto updates
set autoread

" How many lines vim should remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set up wildmenu
set wildmode=longest:full
set wildmenu

" Always show current position
set ruler

" Set vertical to 10 lines
set so=10

" Height for command bar
set cmdheight=2

" Buffers get hidden after finishing
set hid

" Hate those swap files
set noswapfile

" Saerch acts like a modern search
set incsearch

" Dont redraw when executing macros - good for performance
set lazyredraw

" Enable regular expressions
set magic

" Clipboard = clipboard
set clipboard=unnamed

" Make backspace work the way it is supposed to work
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Custom tabs
set tabstop=4
set shiftwidth=4
set expandtab

" Needed for tmux
set t_8f=^[[38;2;%lu;%lu;%lum

""""""""""""""""""""""""
"       PLUGINS        "
""""""""""""""""""""""""

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
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

call plug#end()

" Emmet Settings
let g:emmet_user_settings = {
\	'intendation': '    '
\}

" Airline configs
let g:airline_theme='tender'

" Theme settings
syntax enable
colorscheme tender

" Markdown Syntax
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 2
