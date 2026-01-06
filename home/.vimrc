syntax enable
set encoding=utf-8 "enc
set nobackup "nobk
set nowritebackup "nowb
set termguicolors "tgc

" let b:did_ftplugin = 1 " Disable ftplugin
" let loaded_matchparen = 0

" Install Plugin
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" call plug#begin()
    " Plug 'tpope/vim-commentary'
    " Plug 'unblevable/quick-scope'
    " Plug 'lifepillar/vim-mucomplete'
    " Plug 'mbbill/undotree'
    " Plug 'lervag/vimtex'
    " Plug 'altercation/vim-colors-solarized'
    " Plug 'joshdick/onedark.vim'
    " Plug 'ctrlpvim/ctrlp.vim'
    " Plug 'tpope/vim-surround'
    " Plug 'christoomey/vim-tmux-navigator'
    " Plug 'takac/vim-hardtime'
    " Plug 'baruchel/vim-notebook'
" call plug#end()


" let &t_SI = "\e[6 q"  " Set vertical bar in insert mode
" let &t_EI = "\e[2 q"  " Set block cursor in normal mode

if has("gui_running")
    set guifont=Terminess\ Nerd\ Font\ Mono\ Bold\ 9
    set background=light "bg
else
    set background=dark "bg
endif

" silent! colorscheme solarized
" hi Normal guibg=NONE ctermbg=NONE
" hi Terminal guibg=NONE ctermbg=NONE
" hi EndOfBuffer guibg=NONE ctermbg=NONE

" Quick scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Undotree
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_SplitWidth = 20

" Mucomplete
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#completion_delay = 0

" vimtex

let g:vimtex_view_method = 'sioyek'
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

set number "nu
set relativenumber "rnu
" set cursorline "cul
set signcolumn=no "scl
set laststatus=0 "ls
set nowrap
set splitbelow "sb
set splitright "sr
set pumheight=10 "ph
set completeopt=menuone,noselect

set expandtab "et
set smarttab "sta
set tabstop=4 "ts
set shiftwidth=4 "sw

set autoindent "ai
set smartindent "si
set cindent "ci
set list
set listchars=tab:\ \ ,multispace:·,trail:·

set nohlsearch "nohls
set ignorecase "ic
set smartcase "scs
set incsearch "is
set showmode "smd
set showcmd "sc
set showmatch "sm
set scrolloff=10 "so
set shortmess+=c "shm

set grepprg=rg\ --vimgrep "gp
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
nnoremap <leader><leader> <cmd>FZF<cr>
nnoremap <leader>fb <cmd>buffers<cr>:b<space>
nnoremap <leader>u <cmd>UndotreeToggle<cr>
nnoremap <leader>m <cmd>marks<cr>
nnoremap <leader>j <cmd>jumps<cr>

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv
