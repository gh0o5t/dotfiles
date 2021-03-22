" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs 
    Plug 'jiangmiao/auto-pairs'
    " Easier commenting
    Plug 'preservim/nerdcommenter'
    " Nord  Theme
    Plug 'arcticicestudio/nord-vim'
    " Dracula Theme
    Plug 'dracula/vim' 

call plug#end()
