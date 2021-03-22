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
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'arcticicestudio/nord-vim' 
    Plug 'dracula/vim', { 'as': 'dracula' }
    " For informative line
    Plug 'itchyny/lightline.vim'
    " For better comments 
    Plug 'preservim/nerdcommenter'
    " For nice incons
    Plug 'ryanoasis/vim-devicons'
    " Ranger support
    Plug 'francoiscabrol/ranger.vim'
    " Ranger dependency
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Start page
    Plug 'mhinz/vim-startify'
    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " Git integration
    Plug 'tpope/vim-fugitive'
    " LaTex support
    Plug 'lervag/vimtex'
    " Better completion
    Plug 'ervandew/supertab' 

call plug#end()
