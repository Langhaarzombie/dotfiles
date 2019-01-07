""""""""""""""""""""
"     GENERAL      "
""""""""""""""""""""
set ignorecase
set smartcase

set autoread
set history=500

set title
set titlestring=%t

filetype plugin on
filetype indent on

" Stay in the middle
set scrolloff=9999

set noswapfile

set confirm

set clipboard=unnamed

set timeoutlen=1000
set ttimeoutlen=0

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set autoindent
set smarttab
set tabstop=2
set shiftwidth=2
set expandtab

set splitright splitbelow

set laststatus=0
set noshowmode

set wildignore+=*.swp,*.bak
set undofile
set undodir=/tmp/
set backupdir=~/.local/share/nvim/backup

" Needed for tmux
set t_8f=^[[38;2;%lu;%lu;%lum

set ruler
set rulerformat=%f
set cursorline
augroup numbertoggle
    autocmd!
    autocmd InsertEnter * call SetEnterInsert()
    autocmd InsertLeave * call SetLeaveInsert()
augroup END

function! SetEnterInsert()
    highlight CursorLineNr guibg=#5fbdcd guifg=#efefef
endfunction

function! SetLeaveInsert()
    highlight CursorLineNr guibg=#292b33 guifg=#f8bb3a
endfunction


"""""""""""""""""""""""""""""""
"       CUSTOM MAPPINGS       "
"""""""""""""""""""""""""""""""
let mapleader = ";"

onoremap kj <Esc>
inoremap kj <Esc>
cnoremap kj <Esc>
onoremap jh <Esc>
inoremap jh <Esc>
cnoremap jh <Esc>

nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>o :only<CR>
nnoremap <leader>q :q<CR>

nnoremap º :m .+1<CR>==:echo ""<CR>
nnoremap ∆ :m .-2<CR>==:echo ""<CR>
inoremap º <Esc>:m .+1<CR>==gi
inoremap ∆ <Esc>:m .-2<CR>==gi
vnoremap º :m '>+1<CR>gv=gv
vnoremap ∆ :m '<-2<CR>gv=gv

nnoremap <leader><leader> :nohlsearch<Cr>:echo ""<Cr>

nnoremap <leader>w :w<Cr>

nnoremap mn :bp<Cr>:echo ""<Cr>
nnoremap MN :bn<Cr>:echo ""<Cr>
nnoremap Mn :bn<Cr>:echo ""<Cr>

nnoremap p "0p
nnoremap P "0P
nnoremap <leader>p p
nnoremap <leader>P P

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
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'gabrielelana/vim-markdown', {'for': 'markdown'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'myusuf3/numbers.vim'
Plug 'zxqfl/tabnine-vim'
Plug 'wellle/targets.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Theme
syntax on
colorscheme tomorrow
set t_Co=256
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set termguicolors

" GitGutter
set signcolumn=yes
let g:gitgutter_override_sign_column_highlight=0

" Markdown Syntax
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 2

" Disable vim polyglot for certain languages
let g:polyglot_disabled = ['javascript', 'jsx']

" NERDcommenting
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" Numbers
let g:numbers_exclude = ['nerdtree', 'fzf', 'undotree']

" Emmet
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\    'extends' : 'jsx',
\  },
\}

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

