" Instructions for .vimrc
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"for better clipboard install vim-gtk

call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sickill/vim-monokai', { 'as': 'monokai' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
call plug#end()


" If python-mode is needed, then turn off automatic completion
" let g:pymode_rope = 0

" jedi-vim 
" Disable automatic doc opening
autocmd FileType python setlocal completeopt-=preview

" Set theme
colorscheme nord

" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>

" python-mode
map <silent> <C-l> :PymodeLintAuto

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='nord'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline_powerline_fonts = 1


" Polygot
syntax on

syntax enable
set tabstop=4
set shiftwidth=4
set expandtab
set number
filetype indent on
set autoindent
set clipboard=unnamedplus
set rnu

" Own key remaps
inoremap jj <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <C-Up> :res -1<CR>
nnoremap <silent> <C-Down> :res +1<CR>
nnoremap <silent> <C-Right> :vertical res +1<CR>
nnoremap <silent> <C-Left> :vertical res -1<CR>
let mapleader = "," 
let maplocalleader ="\<space>"
:set splitright
:set splitbelow
