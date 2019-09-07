Installation
------------
Clone and run the `install` script:

```sh
$ git clone https://github.com/bschiela/vim.git ~/repos/vim
$ ~/repos/vim/install
```

> Plugins are automatically installed the first time `vim` is executed.

Command reference
-----------------
### Help
- `:help {cmd}`
- `:help options` for options summary


### Navigation
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
- `m{char}` : set mark {char}
- `'{char}` : go to mark {char}
- `'.`      : last edit
- `''`      : before jump

#### search
- `/{string}`  : search {string}
- `n`(`N`)     : next (previous)
- `*`          : search word under cursor

#### tags
- `:tag {tag}`       : go to {tag}
- `Ctrl-]`           : go to tag under cursor
- `Ctrl-t` or `:pop` : go back


### Editing
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

#### misc.
- `u`(`Ctrl-r`) : undo (redo)
- `>>`(`<<`)    : (un)indent
- `Ctrl-n`(`p`) : autocomplete next (previous)


### Record / playback
- `.`  : repeat last edit
- `qr` : start recording to register r
- `q`  : stop recording
- `@r` : playback from register r
- `@@` : repeat last playback


### Windows
- `:sp`(`vsp`)    : split horizontally (vertically)
- `Ctrl-w {...}`
  - `s`(`v`)      : split horizontally (vertically)
  - `n`           : new
  - `Ctrl-w`      : cycle focus
  - `{direction}` : move focus
  - `+`(`-`)      : taller (shorter)
  - `>`(`<`)      : wider (narrower)
  - `=`           : equal size
