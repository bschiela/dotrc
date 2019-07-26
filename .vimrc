set nocompatible " no vi
set backspace=indent,eol,start " sensical backspaces
set ruler " current line and column number

" vim-plug """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'jeffkreeftmeijer/vim-numbertoggle' | set number relativenumber
Plug 'davidhalter/jedi-vim', {'for': 'python'}
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set splitbelow splitright
set background=dark
