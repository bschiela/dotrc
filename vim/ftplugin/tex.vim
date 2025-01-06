if g:uname == 'Darwin'
  let g:vimtex_view_method='skim'
elseif g:uname == 'Linux'
  let g:vimtex_view_method='mupdf'
endif
let g:vimtex_quickfix_open_on_warning=0
"let g:vimtex_quickfix_autojump=1
let g:vimtex_quickfix_autoclose_after_keystrokes=0
let g:vimtex_compiler_latexmk = {
\ 'options' : [
\   '-pdf',
\   '-shell-escape',
\   '-verbose',
\   '-file-line-error',
\   '-synctex=1',
\   '-interaction=nonstopmode',
\ ],
\}

let b:surround_{char2nr('e')}
    \ = "\\begin{\1environment: \1}\n\t\r\n\\end{\1\1}"
let b:surround_{char2nr('c')} = "\\\1command: \1{\r}"
