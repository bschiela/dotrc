let g:tex_conceal='abdmgs'
setlocal conceallevel=2
highlight Conceal ctermbg=None ctermfg=LightRed

setlocal spell spelllang=en_us
highlight clear SpellLocal

inoremap \[ \[\]<left><left>

let g:ale_tex_chktex_options = '-I -n8 -n36'
