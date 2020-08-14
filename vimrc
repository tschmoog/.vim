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


set showcmd " shows a preview of what command you are typing 

" Set colorscheme:
:color desert
" Following command is an auto installer for the 
" plugin manager. Will instal if the folders do not 
" yet exist   

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" place plugins to be installed here between call plug
call plug#begin()

Plug 'benmills/vimux' " Vim/Tmux integration. Call commands from vim to run in tmux
Plug 'greghor/vim-pyShell' " ipython and tmux integration
Plug 'julienr/vim-cellmode' " create executable cells similar to matlab/ipython


call plug#end()
