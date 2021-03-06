
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"for better clipboard install vim-gtk

call plug#begin()
Plug 'tpope/vim-sensible'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sickill/vim-monokai', { 'as': 'monokai' }
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'davidhalter/jedi-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'ervandew/supertab'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'mhinz/vim-startify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()


"--------------------------------------------------------Set theme--------------------------------------------------------
colorscheme dracula 
"-------------------------------------------------------------------------------------------------------------------------


"-----------------------------------------------------Plugin Settings-----------------------------------------------------

" Vim startify
let g:startify_custom_header = [
\ '  __     ___           ',
\ '  \ \   / (_)_ __ ___  ',
\ '   \ \ / /| | ''_ ` _ \ ',
\ '    \ V / | | | | | | |',
\ '     \_/  |_|_| |_| |_|',
\ '',
\ '',
\ ]



" jedi-vim 
" Disable automatic doc opening
autocmd FileType python setlocal completeopt-=preview


"" NERDTree
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.fls$', '\.lot$', '\.aux$', '\.aux$', '\.bbl$', '\.loa$', '\.blg$', '\.synctex\.gz$', '\.fdb_latexmk$', '\.out$', '\.lof$']


" Vim lightline
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


" Polygot
syntax on
"-----------------------------------------------------------------------------------------------------------------------




"-----------------------------------------------------General settings--------------------------------------------------
syntax enable                           " Enables syntax highlighing
filetype plugin on                      " Filetype plugin
filetype indent on
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set ttymouse=sgr                        " Tmux compatibility
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set rnu                                 " Line numbers
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set clipboard=unnamedplus               " Copy paste between vim and everything else
set hlsearch                            " Highlights searches
set formatoptions-=cro                  " Stop continuation of commenting
set autochdir                           " Your working directory will always be the same as your working directory

" For being able to use better coloschemes
" https://stackoverflow.com/questions/62702766/termguicolors-in-vim-makes-everything-black-and-white
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"-----------------------------------------------------------------------------------------------------------------------

"----------------------------------------------------------Remaps-------------------------------------------------------
" Own key remaps
inoremap jj <Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
let mapleader =  "\<space>"
let maplocalleader = ","
map <leader>r :RangerNewTab<CR>
map <leader>s :FZF<CR>
"-----------------------------------------------------------------------------------------------------------------------

