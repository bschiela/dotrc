set nocompatible " no vi
set backspace=indent,eol,start " sensical backspaces
set ruler " current line and column number

set background=dark
set splitbelow splitright

" default tab and indent settings
set smarttab expandtab tabstop=4 shiftwidth=4

" vim-plug """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'jeffkreeftmeijer/vim-numbertoggle' | set number relativenumber
Plug 'ervandew/supertab'
Plug 'davidhalter/jedi-vim', {'for': 'python'}
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
