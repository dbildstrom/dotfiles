let $VIMHOME=expand("<sfile>:p:h")

source $VIMHOME/vim_plugins.vimrc


set nu
set encoding=utf-8
filetype plugin on
filetype plugin indent on
syntax on
set mouse=

set directory=$VIMHOME/swap_files//
set backupdir=$VIMHOME/backup_files//
set undodir=$VIMHOME/undo_files//

set nocompatible
set nobomb
set hlsearch
set ttyfast
set laststatus=2
set fileformats=unix,dos,mac
set cmdheight=2
set title
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent

colorscheme jellybeans
let &colorcolumn="80,".join(range(120,999),",")

nmap <leader>sv :source $MYVIMRC<cr>
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
map <leader>c :TComment<cr>
nmap <silent> <leader>/ :set hlsearch!<CR>

let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,*.o,*.pyc,*.pyo"
