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
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'takac/vim-hardtime'
    Plug 'unblevable/quick-scope'
    Plug 'lifepillar/vim-mucomplete'
    Plug 'mbbill/undotree'
call plug#end()

if has('win64')
    let &t_SI = "\e[2 q"
    let &t_EI = "\e[2 q"
    set belloff=all
    set backspace=2
    let g:undotree_DiffCommand="fc"
endif

set background=dark "bg
colorscheme onedark
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

let g:hardtime_default_on = 1
let g:hardtime_timeout = 5000
let g:hardtime_ignore_quickfix = 1
let g:hardtime_allow_different_key = 1
let g:hardtime_maxcount = 1
let g:hardtime_motion_with_count_resets = 1

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

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

set nohlsearch "nohls
set ignorecase "ic
set smartcase "scs
set incsearch "is

set showmode "smd
set showcmd "sc
set showmatch "sm
set scrolloff=10 "so
set shortmess+=c "shm

set grepprg=git\ grep\ -n "gp
set path+=**
set wildmenu "wmnu
set wildignorecase "wic
set wildignore=\*node_modules/\*,\*.git/\* "wig
set hidden "hid
set noswapfile "swf
set undofile "udf
set undodir=~/.vim/undo "udir
set confirm "cf
set ttimeoutlen=10 "ttm
set updatetime=300 "ut

let g:mapleader = " "

nnoremap <C-w>d <cmd>bdelete<cr>
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap H <cmd>bprevious<cr>
nnoremap L <cmd>bnext<cr>
nnoremap <leader>e <cmd>Ex<cr>
nnoremap <leader>ff <cmd>FZF<cr>
nnoremap <leader>fb <cmd>buffers<cr>:b<space>
nnoremap <leader>u <cmd>UndotreeToggle<cr>
" nnoremap <leader>g <cmd>!fzf-tmux -p --reverse<cr>

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
