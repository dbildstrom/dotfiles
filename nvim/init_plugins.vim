" auto-install vim-plug

let VIMHOME=expand("<sfile>:p:h")
let $VIMHOME=expand("<sfile>:p:h")
let vimplugpath = VIMHOME . '/autoload/plug.vim'
if empty(glob(vimplugpath))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
    source $VIMHOME/vim_plugins.vimrc
else
    source $VIMHOME/vim_plugins.vimrc
    autocmd VimEnter * :PlugUpgrade
    autocmd VimEnter * :PlugUpdate
endif


