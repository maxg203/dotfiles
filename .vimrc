set nocompatible              " be iMproved
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" All plugin commands should stay between vundle#begin/end
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
call vundle#end()

filetype plugin indent on
