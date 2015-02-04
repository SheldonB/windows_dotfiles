" Sheldon Burks .vimrc
" Contact Info: sheldon.burks@gmail.com
" Github: aww.github.com/SheldonB

""""""""""""""""""""""""""""""""""""""""""""""""""""
"	        	General		               		   "
""""""""""""""""""""""""""""""""""""""""""""""""""""
"setup pathogen
execute pathogen#infect()
filetype plugin indent on

"vi is old you know?
set nocompatible

"Set the leader key
let mapleader=","

"Turn an line numbers
"or relative numbering
"set number
set relativenumber

"don't let Vim back up my files
set nobackup
set noswapfile

"Remember more commands
set history=1000

"Many more undo levels
set undolevels=1000

"Show status bar always
set laststatus=2

"Not for sure what this does but
"I was told to put this here
set hidden

"not forsure what this does, will find out
set lazyredraw


" List of All installed Plugins
" T-Comment
" NERDTree
" Ctrl-P
" delimitMate
" Snipmate
" Syntastic
" vim-airline
" tmuxline
" fugitive
" vim-bufferline
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"	        	Colors and Fonts                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable

"set up for GUI
if has("gui_running") 
    set guioptions-=T
    autocmd GUIEnter * set vb t_vb=
    set backspace=2
    set guifont=Source_Code_Pro_Semibold:h11:cANSI
    set encoding=utf8
    set background=dark
    colorscheme solarized
    au GUIEnter * simalt ~x
else
    colorscheme jellybeans
endif

let g:airline_powerline_fonts=1

"set terminal colors to 256
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""""""
"             Text, tab, and indent                "
""""""""""""""""""""""""""""""""""""""""""""""""""""
"use spaces instead of tabs
set expandtab

"Use smart tabs
set smarttab

"set tab config
set tabstop=4
set shiftwidth=4

set ai "Auto indent
set si "Smart indent
set wrap "Warp lines

"turn matching parenthesis red
hi MatchParen cterm=bold ctermbg=none ctermfg=red

""""""""""""""""""""""""""""""""""""""""""""""""""
"              Custom Keybindings                "
""""""""""""""""""""""""""""""""""""""""""""""""""
"Breaking bad habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"set escape for modes
inoremap jj <Esc>

"Still breaking those bad habits
inoremap <Esc> <NOP>

"Mapping for save
inoremap <leader>s <esc>:w<cr>a
nnoremap <leader>s :w<cr>

"Shortcut to my .vimrc
noremap <leader>rc :e $MYVIMRC<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
"             Plugin Keybindings                 "
""""""""""""""""""""""""""""""""""""""""""""""""""
"T-Comment Bindings
noremap <leader>c :TComment<cr>

"NERDtree Bindings
noremap <C-n> :NERDTreeToggle<cr> 

"CtrlP Bindings
inoremap <leader>cb <esc>:CtrlPBuffer<cr>a
nnoremap <leader>cb :CtrlPBuffer<cr>
