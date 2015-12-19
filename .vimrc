set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"""""""""""
" PLUGINS "
"""""""""""
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'      " file tree explorer
Plugin 'scrooloose/syntastic'     " syntax error checking/highlighting
"Plugin 'scrooloose/nerdcommenter' " code commenting keybindings
Plugin 'kien/ctrlp.vim'           " fuzzy file finder
let g:ctrlp_open_new_file='r'     " replace current buffer by default
"Plugin 'altercation/vim-colors-solarized' " color scheme
Plugin 'ervandew/supertab'        " tab autocompletion
let g:SuperTabNoCompleteAfter=['^', '\s', '"', "'", '(', ')', '{', '}']
let g:SuperTabLongestEnhanced=1   " insert longest common match among suggestions
let g:SuperTabLongestHighlight=1  " immediately highlight first match
let g:SuperTabClosePreviewOnPopupClose=1 " close vim's pum when completion pum closes
let g:SuperTabDefaultCompletionType = "context" " guess suggestions based on context
let g:SuperTabContextDefaultCompletionType = "<C-x><C-o>" " default when context fails
"Plugin 'tpope/vim-fugitive'       " git integration
Plugin 'vim-ruby/vim-ruby'        " ruby syntax, code formatting, autocomplete
Plugin 'rust-lang/rust.vim'

call vundle#end()            " required
filetype plugin indent on    " required (allow filetype-specific plugins and indentation)

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Put your non-Plugin stuff after this line
syntax on " enable syntax highlighting
filetype on " enable filetype detection
set nowrap " don't wrap text by default
set splitright " open vertical splits to the right
set splitbelow " open horizontal splits below
set shiftwidth=2 tabstop=2 noexpandtab " default tab properties

" autocompletion/popup menu options
highlight Pmenu ctermbg=DarkRed ctermfg=White cterm=bold
highlight PmenuSel ctermbg=DarkGreen ctermfg=White cterm=bold
set completeopt=longest,menuone " insert longest match, display menu even with 1 suggestion
inoremap <expr> <CR> (pumvisible() ? "<C-y>" : "<C-g>u<CR>") " prevent newline when selecting with <CR>

" for ruby files
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 expandtab number " ruby indentation style
autocmd FileType ruby let g:rubycomplete_buffer_loading=1 " load current buffer for suggestions
autocmd FileType html setlocal shiftwidth=2 tabstop=2 number " html files
