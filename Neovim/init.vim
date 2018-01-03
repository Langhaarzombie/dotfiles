""""""""""""""""""""
"     GENERAL      "
""""""""""""""""""""

" Line numbers
set number relativenumber
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

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
set cursorline

" No comment marker when pressing o or O or on Enter
set fo-=r fo-=o

" Set vertical scroll padding
set so=9999

" Command bar
set cmdheight=1

" Buffers get hidden after finishing
set hid

" Hate those swap files
set noswapfile

" Dont redraw when executing macros - good for performance
set lazyredraw

" Enable more regular expressions
set magic

" Show dialog instead of failing command
set confirm

" Clipboard = clipboard
set clipboard=unnamed

" Make backspace work the way it is supposed to work
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Custom tabs
set autoindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

" Statusline
set laststatus=2
set noshowmode

" Undoing made comfortable
set wildignore+=*.swp,*.bak
set undofile
set undodir=/tmp/
set backupdir=~/.local/share/nvim/backup

" Needed for tmux
set t_8f=^[[38;2;%lu;%lu;%lum

"""""""""""""""""""""""""""""""
"       CUSTOM MAPPINGS       "
"""""""""""""""""""""""""""""""

" Default leader
let mapleader = ";"

" Delete a word even when in the middle of it
nnoremap <leader>dw lbdw

" Clear a line and go to insert
nnoremap <leader>dd ddO

" Moving lines
nnoremap º :m .+1<CR>==
nnoremap ∆ :m .-2<CR>==
inoremap º <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .-2<CR>==gi
vnoremap º :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv

" No search highlights anymore
nnoremap <leader><leader> :nohlsearch<Cr>:echo ""<Cr>

" Completion menu modifications
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
            \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
            \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'<Paste>

""""""""""""""""""""""""
"       PLUGINS        "
""""""""""""""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" Theme
Plug 'ayu-theme/ayu-vim'
Plug 'morhetz/gruvbox'

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
Plug 'scrooloose/nerdcommenter'

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
syntax enable
let g:gruvbox_invert_selection = 0
let g:gruvbox_contrast_dark = 'hard'
set background=dark
colorscheme gruvbox
highlight CursorLine guibg=#3c3836

" GitGutter signs column
let g:gitgutter_override_sign_column_highlight=0
set signcolumn=yes
highlight SignColumn guibg=#1b1b1b
highlight GitGutterAdd guibg=#1b1b1b
highlight GitGutterChange guibg=#1b1b1b
highlight GitGutterDelete guibg=#1b1b1b
highlight GitGutterChangeDelete guibg=#1b1b1b

" Markdown Syntax
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 2

" NERDcommenting
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
