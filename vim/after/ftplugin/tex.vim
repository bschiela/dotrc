set conceallevel=2
let g:tex_conceal='abdmgs'
highlight Conceal ctermbg=None ctermfg=LightRed

let b:surround_{char2nr('e')}
    \ = "\\begin{\1environment: \1}\n\t\r\n\\end{\1\1}"
let b:surround_{char2nr('c')} = "\\\1command: \1{\r}"
