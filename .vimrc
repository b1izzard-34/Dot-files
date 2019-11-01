""Vundle Plugins

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" VUNDLE
Plugin 'VundleVim/Vundle.vim'

" CURSORLINE
Plugin 'CursorLineCurrentWindow'

" INDENTLINE
Plugin 'yggdroot/indentline'	

" NERDTREE
Plugin 'scrooloose/nerdtree'

" PAPERCOLOR
Plugin 'nlknguyen/papercolor-theme'

" AUTOPAIR
Plugin 'jiangmiao/auto-pairs'

" LIGHTLINE
Plugin 'itchyny/lightline.vim'

" DEVICONS
Plugin 'ryanoasis/vim-devicons'

" YCM
Plugin 'valloric/youcompleteme'

" PLUGINS
call vundle#end()            " required
filetype plugin indent on    " required

"" Other Configs
" BASIC
"
" Tab width 4
set tabstop=4

" Turn on Syntax Highlighting
syntax on

" Show line numbers
set number

" Highlight matching search patterns
set hlsearch

" Highlight matching paretheses
"set showmatch

set encoding=UTF-8

" Diabling the arrow keys in vim
" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>
" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Encoding
set encoding=utf-8

"" Plugins
 
" PLUGINS
" CURSORLINE
" Highlight the current line
set cursorline

" INDENTLINE
"let g:indentLine_setColors = 0
let g:indentLine_char = '¦'

" NERDTREE
" Open nerd tree automatically when no file is open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Open nerd tree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" Close vim when only window open is nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" PAPERCOLOR
set background=dark
colorscheme PaperColor

" AUTOPAIR
"
" LIGHTLINE
" Show lightline always
set laststatus=2
" Change the colorscheme
let g:lightline = {'colorscheme': 'one',}

" DEVICONS
"
" YCM
"
