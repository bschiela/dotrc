set nocompatible " no vi
set backspace=indent,eol,start " sensical backspaces
set ruler " current line and column number

" Vundle """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

filetype plugin indent on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on " syntax highlighting
