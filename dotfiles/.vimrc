set nocompatible
set shortmess=atI
set noerrorbells
set backspace=indent,eol,start

" Finding Files
" Search down into subfolders
set path+=**
" Tab-completion
set wildmenu

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set showmode
set ruler
set number
set relativenumber
"Enable Vim to use the system clipboard
set clipboard=unnamed
set laststatus=2
set scrolloff=8
set incsearch
syntax on
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=white
set nowrap
set termwinsize=20x0

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

filetype on

set background=dark

"File Tree Browser Settings
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_altv = 1

" Remap
let mapleader = " "
inoremap kj <Esc>

" Matching Pairs instead of pluggin
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>0
"inoremap {;<CR> {<CR>}l<ESC>0

nnoremap <leader>rs :sh<CR>
nnoremap <leader>rp :!python3 %<CR>
nnoremap <leader>tr :bel terminal <CR>
nnoremap <leader>ft :Vexplore<CR>
nnoremap <leader>w <C-w>v

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
