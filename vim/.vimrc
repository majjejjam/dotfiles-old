"Basic settings
set nocompatible
set mouse=a
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set number
set relativenumber
set hlsearch
set ignorecase
set incsearch
set smartcase
set linebreak
set scrolloff=3
set sidescrolloff=5
set wrap
set noerrorbells
set background=dark
set clipboard=unnamedplus
filetype plugin indent on

syntax enable

"Custom maps
let mapleader=" "
map <Leader>f :Goyo<CR>
nnoremap <CR> :noh<CR><CR>

map <C-g> :GoRun<CR>

"Navigation by visible lines
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

map <C-n> :NERDTreeToggle<CR>

"Go highlighting
set rtp+=$GOROOT/misc/vim

"Bye YCM
let g:loaded_youcompleteme = 1

"Recommended syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"-- PLUGINS --
"call plug#begin('~/.vim/plugged')

"Quailty of life
"Plug 'junegunn/goyo.vim'
"Plug 'tpope/vim-sensible'
"
"Plug 'tpope/vim-surround'

"Programming
"Plug 'townk/vim-autoclose'
"Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'
"Plug 'vim-airline/vim-airline'
"Plug 'valloric/youcompleteme'
"Plug 'fatih/vim-go'

"Plug 'scrooloose/syntastic'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'godlygeek/tabular'

"call plug#end()
