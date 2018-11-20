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
set cursorline
set ruler

colorscheme jellybeans
let &colorcolumn="80,".join(range(120,999),",")

nmap <leader>sv :source $MYVIMRC<cr>
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
nnoremap <C-W>- :sp<CR>
nnoremap <C-W>_ :sp<CR>
nnoremap <C-W>\| :vs<CR>
nnoremap <C-W>\ :vs<CR>
map <leader>c :TComment<cr>
map <leader>g :call ToggleGitBase()<cr>
map <leader>bt :call CodeTag("TODO")<cr>
map <leader>bn :call CodeTag("NOTE")<cr>
map <leader>bf :call CodeTag("FIXME")<cr>
nmap <silent> <leader>/ :set hlsearch!<CR>

let g:DirDiffExcludes = "CVS,*.class,*.exe,.*.swp,*.o,*.pyc,*.pyo,.svn"

" Neomake
autocmd! BufWritePost,BufEnter * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']

" requires https://github.com/jhawthorn/fzy to be installed
nnoremap <C-p> :FuzzyOpen<CR>

" Save file with sudo
cmap w!! w !sudo tee % >/dev/null

" abbreviation for inserting current timestamp
iab TIME <C-R>=strftime("%c")<CR>

function! CodeTag(ploppType)
    " https://www.python.org/dev/peps/pep-0350/
    execute "normal O" . a:ploppType . "(" . g:todoName . "): "
    :TComment
    startinsert!
endfunction

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\)')
  endif
  autocmd BufNewFile,BufRead *confd.conf*,ncs.conf* :setlocal filetype=xml
endif

let g:jsx_ext_required = 0
source $VIMHOME/git_functions.vim
