
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" place plugins to be installed here between call plug
call plug#begin()

Plug 'YorickPeterse/happy_hacking.vim' " Pls am hacker
Plug 'jpalardy/vim-slime' " Copies code chunks and sends them to other panes. 

call plug#end()

filetype plugin on

" Set colorscheme:
colorscheme happy_hacking

let g:slime_target = "tmux" " Use tmux for vim slime

syntax enable " enable syntax processing
set tabstop=4 " number of spaces per tab shown when reading a file
set softtabstop=4 " number of spaces inserted when editing a file
set expandtab " tabs==spaces. Number of spaces set above
set number " turns on line numbers
set autoindent
set shiftwidth=4 " makes autoindented tabs == 4 spaces
" set cursorline " highlights current line
filetype indent on
set nrformats= " removes vims default behaviour of assuming leading 0 on
                " a number is octal rather than decimal format  

set relativenumber " Sets relative line numbers for easier movement (for me)
set showcmd " shows a preview of what command you are typing 

set spell spelllang=en_gb " turns on spellcheck 
