""Vundle Plugins

set nocompatible              " be iMproved, required
" Specify a directory for plugins
call plug#begin('~/.nvim/plugged')

" INDENTLINE
Plug 'yggdroot/indentline'	

" NERDTREE
Plug 'scrooloose/nerdtree'

" PAPERCOLOR
Plug 'nlknguyen/papercolor-theme'

" AUTOPAIR
Plug 'jiangmiao/auto-pairs'

" LIGHTLINE
Plug 'itchyny/lightline.vim'

" DEVICONS
Plug 'ryanoasis/vim-devicons'

" YCM
" Plug 'valloric/youcompleteme'

" PLUGINS
" Initialize plugin system
call plug#end()

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
