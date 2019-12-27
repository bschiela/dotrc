set nocompatible " no vi
set backspace=indent,eol,start " sensical backspaces
set ruler " current line and column number

set background=dark
set splitbelow splitright

" default tab and indent settings
set smarttab expandtab tabstop=4 shiftwidth=4

" default word-wrapping and line-breaking settings
set wrap linebreak

set completeopt+=longest

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
let g:SuperTabDefaultCompletionType='<c-x><c-o>'
let g:SuperTabMappingForward='<c-j>'
let g:SuperTabMappingBackward='<c-k>'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" filetype specific
let g:tex_flavor='latex'
