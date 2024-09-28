syntax on
set termguicolors "tgc
let loaded_matchparen = 1

call plug#begin()
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'mbbill/undotree'
call plug#end()

let g:undotree_SetFocusWhenToggle = 1

set number "nu
set relativenumber "rnu

set expandtab "et
set tabstop=4 "ts
set shiftwidth=4 "sw

set autoindent "ai
set smartindent "si
set cindent "cin

set hlsearch "hls
set ignorecase "ic
set smartcase "scs
set incsearch "is

set showmode "smd
set showcmd "sc
set showmatch "sm
set scrolloff=10 "so

set wildmenu "wmnu
set hidden "hid
set noswapfile "swf
set undofile "udf
set undodir=~/.vim/undo "udir
set confirm "cf

let g:mapleader = " "

set ttimeoutlen=10

nnoremap <esc> <cmd>noh<cr><esc>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap H <cmd>bprevious<cr>
nnoremap L <cmd>bnext<cr>
nnoremap <leader>fb <cmd>buffers<cr>:b<space>
nnoremap <leader>u <cmd>UndotreeToggle<cr>

inoremap <esc> <cmd>noh<cr><esc>

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
