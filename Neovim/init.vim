""""""""""""""""""""
"     GENERAL      "
""""""""""""""""""""

" Better search
set ignorecase
set smartcase

" Enable auto updates
set autoread

" Change window title
set title
set titlestring=%t

" How many lines vim should remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Stay in the middle
set scrolloff=9999

" Hate those swap files
set noswapfile

" Show dialog instead of failing command
set confirm

" System Clipboard
set clipboard=unnamed

" Timeout for fast escape
set timeoutlen=1000
set ttimeoutlen=0

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
set laststatus=0
set noshowmode

" Undoing made comfortable
set wildignore+=*.swp,*.bak
set undofile
set undodir=/tmp/
set backupdir=~/.local/share/nvim/backup

" Needed for tmux
set t_8f=^[[38;2;%lu;%lu;%lum

" Always show current position
set ruler
set rulerformat=%f
set cursorline
augroup numbertoggle
    autocmd!
    autocmd InsertEnter * call SetEnterInsert()
    autocmd InsertLeave * call SetLeaveInsert()
augroup END

function! SetEnterInsert()
    highlight CursorLineNr guibg=#3e999f guifg=#efefef
endfunction

function! SetLeaveInsert()
    highlight CursorLineNr guibg=#efefef guifg=#f5871f
endfunction


"""""""""""""""""""""""""""""""
"       CUSTOM MAPPINGS       "
"""""""""""""""""""""""""""""""

" Default leader
let mapleader = ";"

" Escape the escape key
onoremap kj <Esc>
inoremap kj <Esc>
cnoremap kj <Esc>
onoremap jh <Esc>
inoremap jh <Esc>
cnoremap jh <Esc>

" Spilt
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>o :only<CR>
nnoremap <leader>q :q<CR>

" Moving lines
nnoremap º :m .+1<CR>==:echo ""<CR>
nnoremap ∆ :m .-2<CR>==:echo ""<CR>
inoremap º <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .-2<CR>==gi
vnoremap º :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv

" No search highlights anymore
nnoremap <leader><leader> :nohlsearch<Cr>:echo ""<Cr>

" Save quickly
nnoremap <leader>w :w<Cr>

" Switch buffers
nnoremap mn :bp<Cr>:echo ""<Cr>
nnoremap MN :bn<Cr>:echo ""<Cr>
nnoremap Mn :bn<Cr>:echo ""<Cr>

" Better copying
nnoremap p "0p
nnoremap P "0P
nnoremap <leader>p p
nnoremap <leader>P P

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
Plug 'morhetz/gruvbox'

" Syntax Settings
Plug 'sheerun/vim-polyglot'

" Ale
" Plug 'w0rp/ale'

" Prettier
" Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Auto-closing of brackets, ...
Plug 'raimondi/delimitmate'

" Emmet
Plug 'mattn/emmet-vim'

" Multi Cursor
Plug 'terryma/vim-multiple-cursors'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Markdown
Plug 'gabrielelana/vim-markdown', {'for': 'markdown'}

" JSX
" Plug 'mxw/vim-jsx'

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

" For dynamic line numbers
Plug 'myusuf3/numbers.vim'

" Autocomplete
Plug 'ervandew/supertab'

" Advanced undo
Plug 'mbbill/undotree'

" Fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

call plug#end()

" Theme
syntax on
" colorscheme gruvbox
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
colorscheme tomorrow
set termguicolors
let g:gruvbox_invert_selection = 0
let g:gruvbox_contrast_dark = 'hard'

" GitGutter
set signcolumn=yes
let g:gitgutter_override_sign_column_highlight=0

" Markdown Syntax
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 2

" NERDcommenting
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Numbers
let g:numbers_exclude = ['nerdtree', 'fzf', 'undotree']

" Undotree
let g:undotree_WindowLayout = 2
let g:undotree_ShortIndicators = 1
let g:undotree_SplitWidth = 30
let g:undotree_SetFocusWhenToggle = 1
nnoremap <leader>u :UndotreeToggle<Cr>

" Prettier Config
" let g:ale_fixers = {'javascript': ['prettier']}
" let g:ale_fix_on_save = 1
" let g:ale_javascript_prettier_use_local_config = 1

" FZF
nnoremap <leader>ff :FZF<Cr>
nnoremap <leader>fl :Lines<Cr>
let g:fzf_layout = { 'right': '~40%' }
augroup open_folders
    autocmd!
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if isdirectory(expand("<amatch>")) | exe 'FZF! '.expand("<amatch>") | wincmd p | endif
augroup END
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Keyword'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine'],
  \ 'hl+':     ['fg', 'Keyword'],
  \ 'info':    ['fg', 'Normal'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

