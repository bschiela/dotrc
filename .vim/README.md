Command reference
-----------------
### Help
- `:help {cmd}`
- `:help options` for options summary


### View
#### buffers
- `:e **/*{string}<tab>` : edit file matching {string}
- `:ls`/`:buffers`       : list
- `b{...}`               : switch buffer ...
  - `{#}`                  : number {#}
  - `n`(`p`)               : cycle next (previous)
  - `f`(`l`)               : first (last)
  - ` {string}<tab>`       : name {string}
- `<C-^>`          : toggle previous

#### windows
- `:sp`(`vsp`)    : split horizontally (vertically)
- `Ctrl-w {...}`
  - `s`(`v`)      : split horizontally (vertically)
  - `n`           : new
  - `Ctrl-w`      : cycle focus
  - `{direction}` : move focus
  - `+`(`-`)      : taller (shorter)
  - `>`(`<`)      : wider (narrower)
  - `=`           : equal size

#### netrw file explorer
- `:E`[`xplore`]        : open
- `:Ve`(`Se`)[`xplore`] : open vertical (horizontal)
- `i`                   : cycle view
- `I`                   : show banner


### Navigate
- `Ctrl-o {cmd}` : do {cmd} in normal mode

#### page / scroll
- `Ctrl-f`(`b`) : page forward (back) -- scroll
- `Ctrl-d`(`u`) : half-page down (up)
- `Ctrl-e`(`y`) : line down (up) -- scroll
- `z+`(`z^`)    : full page down (up)
- `zz`(`z.`)    : line center (& beginning of line)
- `zt`(`zb`)    : line top (bottom)

#### block
- `)`(`}`) : down (whitespace) block
- `(`(`{`) : up (whitespace) block
- `%`      : matching delimiter

#### line
- `G`      : last line
- `gg`     : first line
- `{#}G`   : line {#}
- `^`(`0`) : beginning (whitespace)
- `$`      : end

#### word
- `w`(`W`)   : next word (by whitepace)
- `b`(`B`)   : back word (by whitespace)
- `e`(`E`)   : end word (by whitespace) 
- `ge`(`gE`) : back end word (by whitespace)

#### character
- `f{char}` : forward to {char}

#### mark
- `:marks`            : list marks
- `m{char}`           : set mark {char}
- `` ` ``(`'`)...        : go to position (line)...
  - `{char}`            : custom mark {char}
  - `.`                 : last change
  - `"`                 : last exit
  - `` ` ``(`'`)           : before jump
- `:delmarks {chars}` : delete marks {chars}

#### search
- `/{string}`  : search {string}
- `n`(`N`)     : next (previous)
- `*`(`#`)     : search word under cursor (backwards)

#### tags
- `:tag {tag}`       : go to {tag}
- `Ctrl-]`           : go to tag under cursor
- `Ctrl-t` or `:pop` : go back


### Edit
#### insert, substitute, replace, change
- `i`(`I`)      : insert char (line)
- `a`(`A`)      : after char (line)
- `s`(`S`)      : substitute char (line)
- `r`(`R`)      : replace char (enter replace mode)
- `o`(`O`)      : insert next (previous) line
- `c{motion}`   : change {motion} (see [Navigation](#navigation))
  - `ciw`       : change inner word (under cursor)
  - `cf{char}`  : change forward to {char}
- `C`           : change to end of line

#### cut, copy, paste
- `x`(`X`)         : delete (backspace)
- `dd`(`D`)        : delete (to end of) line
- `d{#}d`          : delete {#} lines
- `["r]d{motion}`  : delete {motion} into register r
                     (see [Navigation](#navigation))
  - `diw`          : delete inner word (under cursor)
  - `df{char}`     : delete forward to {char}
- `["r]p`(`P`)     : paste after (before) from register r
- `d` &rarr; `y`   : yank, i.e. copy

#### format
- `>>`(`<<`)   : (un)indent
- `gq{motion}` : format to `textwidth`

#### misc.
- `u`(`Ctrl-r`)   : undo (redo)
- `Ctrl-n`(`p`)   : autocomplete next (previous)
- `Ctrl-x Ctrl-o` : omnicompletion

#### record / playback
- `.`  : repeat last edit
- `qr` : start recording to register r
- `q`  : stop recording
- `@r` : playback from register r
- `@@` : repeat last playback


### Screen
- `Ctrl-l` : redraw screen
