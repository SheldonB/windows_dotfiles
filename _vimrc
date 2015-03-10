" Sheldon Burks vimrc for windows
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

filetype plugin on

set omnifunc=syntaxcomplete#Complete

"Save on focus lost
:au FocusLost * :wa

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
"set t_Co=256

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

"Remove trailing whitespace
nnoremap <leader>rtw :%s/\s\+$//e<CR>

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
inoremap <leader>s <esc>:wa<cr>a
nnoremap <leader>s :wa<cr>

"Shortcut to my .vimrc
noremap <leader>rc :e $MYVIMRC<cr>

"Mapping for delete buffer
noremap <leader>d :bd<cr>
"Make moving between splits easier
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

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
