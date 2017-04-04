set nocompatible              " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" All plugin commands should stay between vundle#begin/end
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
call vundle#end()

filetype plugin indent on

" Fix tabs
set expandtab           " enter spaces when tab is pressed
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
