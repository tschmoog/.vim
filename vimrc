
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" place plugins to be installed here between call plug
call plug#begin()

Plug 'YorickPeterse/happy_hacking.vim'

Plug 'jpalardy/vim-slime' " send code to ipython for jupyter style execution

Plug 'https://github.com/rkulla/pydiction.git' " python autocomplete


call plug#end()


let g:slime_target = "tmux" " Send slime commands to tmux
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
let g:pydiction_location='//Users/Tim/.vim/plugged/pydiction/complete-dict'

filetype plugin on

" Set colorscheme:
colorscheme happy_hacking

syntax enable " enable syntax processing
set tabstop=4 " number of spaces per tab shown when reading a file
set softtabstop=4 " number of spaces inserted when editing a file
set expandtab " tabs==spaces. Number of spaces set above
set number " turns on line numbers
set shiftwidth=4 " makes autoindented tabs == 4 spaces
" set cursorline " highlights current line
filetype indent on
set path+=**
set nrformats= " removes vims default behaviour of assuming leading 0 on
                " a number is octal rather than decimal format  

set relativenumber " Sets relative line numbers for easier movement (for me)
set number
set number relativenumber
set textwidth=80 " Wraps text to start on a new line after 80 chars
set showcmd " shows a preview of what command you are typing 

" Following command is an auto installer for the 
" plugin manager. Will instal if the folders do not 
" yet exist   
