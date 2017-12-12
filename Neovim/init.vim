""""""""""""""""""""
"     GENERAL      "
""""""""""""""""""""

" Line numbers
set number

" Easier search and commands
set incsearch
set hlsearch
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

" Command bar
set cmdheight=1

" Buffers get hidden after finishing
set hid

" Hate those swap files
set noswapfile

" Dont redraw when executing macros - good for performance
set lazyredraw

" Enable regular expressions
set magic

" Show dialog instead of failing command
set confirm

" Clipboard = clipboard
set clipboard=unnamed

" Make backspace work the way it is supposed to work
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Moving lines
nnoremap º :m .+1<CR>==
nnoremap ∆ :m .-2<CR>==
inoremap º <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .-2<CR>==gi
vnoremap º :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv

" Default leader
let mapleader = ";"

" Custom tabs
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

" Statusline
set laststatus=2
" set statusline=%<\ %f\ %m%r%w%=%y\ \ %l,%-3c\ %p%%\ "
" set statusline 
set noshowmode

" Folding
set foldlevelstart=999
set foldmethod=indent

" Undoing made comfortable
set wildignore+=*.swp,*.bak
set undofile
set undodir=/tmp/
set backupdir=~/.local/share/nvim/backup

" Needed for tmux
set t_8f=^[[38;2;%lu;%lu;%lum

""""""""""""""""""""""""
"       PLUGINS        "
""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Theme
Plug 'ayu-theme/ayu-vim'

" Syntax Settings
Plug 'sheerun/vim-polyglot'

" Auto-closing of brackets, ...
Plug 'raimondi/delimitmate'

" Emmet
Plug 'mattn/emmet-vim'

" Multi Cursor
Plug 'terryma/vim-multiple-cursors'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

" Lightline
Plug 'itchyny/lightline.vim'

" Switching sides / panes / ...
Plug 'christoomey/vim-tmux-navigator'

" Commenting
" Plug 'tomtom/tcomment_vim'

" Easy sandwich deleting
Plug 'wellle/targets.vim'

" CSS Colors
Plug 'ap/vim-css-color', {'for': 'css'}

call plug#end()

" Emmet Settings
let g:emmet_user_settings = {
\	'intendation': '    '
\}

let g:lightline = {
\   'colorscheme': 'custom',
\   'active': {
\       'right': [  [ 'lineinfo' ],
\                   [ 'percent' ],
\                   [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
\   },
\   'component': {
\       'charvaluehex': '0x%B'
\ },
\}

" Theme settings
set termguicolors
set background=dark
syntax enable
let ayucolor="dark"
colorscheme ayu

" Markdown Syntax
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 2
