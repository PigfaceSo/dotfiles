syntax on
set encoding=utf-8 "enc
set nobackup "nobk
set nowritebackup "nowb
set termguicolors "tgc
" let loaded_matchparen = 1

call plug#begin()
    Plug 'joshdick/onedark.vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    " Plug 'ervandew/supertab'
    " Plug 'vim-scripts/AutoComplPop'
    Plug 'lifepillar/vim-mucomplete'
    Plug 'mbbill/undotree'
call plug#end()

set background=dark "bg
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

let g:undotree_SetFocusWhenToggle = 1
let g:undotree_SplitWidth = 20

let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 0

set number "nu
set relativenumber "rnu
set cursorline "cul
set signcolumn=yes "scl
set nowrap 
set pumheight=10 "ph
set completeopt=menuone,noselect

set expandtab "et
set smarttab "sta
set tabstop=4 "ts
set shiftwidth=4 "sw

set autoindent "ai
set smartindent "si
set cindent "ci

set hlsearch "hls
set ignorecase "ic
set smartcase "scs
set incsearch "is

set showmode "smd
set showcmd "sc
set showmatch "sm
set scrolloff=10 "so
set shortmess+=c "shm

set wildmenu "wmnu
set hidden "hid
set noswapfile "swf
set undofile "udf
set undodir=~/.vim/undo "udir
set confirm "cf
set ttimeoutlen=10 "ttm
set updatetime=300 "ut

let g:mapleader = " "

nnoremap <esc> <cmd>nohls<cr><esc>
nnoremap <C-w>d <cmd>bdelete<cr>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap H <cmd>bprevious<cr>
nnoremap L <cmd>bnext<cr>
nnoremap <leader>e <cmd>Ex<cr>
nnoremap <leader>ff <cmd>FZF<cr>
nnoremap <leader>fb <cmd>buffers<cr>:b<space>
nnoremap <leader>u <cmd>UndotreeToggle<cr>

inoremap <esc> <cmd>nohls<cr><esc>

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
