.vim
====
personal vim configuration

Installation
------------
1. Clone to `~/.vim`:
   ```sh
   $ git clone https://github.com/bschiela/vim.git ~/.vim
   ```
2. Symlink `.vimrc`:
   ```sh
   $ ln -s ~/.vim/.vimrc ~/.vimrc
   ```
3. Install plugins:
   > `vim-plug` installs automatically when `.vimrc` is first executed
   ```sh
   $ source ~/.vimrc
   $ vim +PlugInstall
   ```

Command reference
-----------------
### Help
`:help cmd` : help for <cmd>


### Navigation

#### page / scroll
`Ctrl-f`(`b`) : page forward (back) -- scroll
`Ctrl-d`(`u`) : half-page down (up)
`Ctrl-e`(`y`) : line down (up) -- scroll

`z+`(`z^`)    : full page down (up)
`zz`(`z.`)    : line center (beginning of line)
`zt`(`zb`)    : line top (bottom)

#### block
`)`(`}`) : down block (whitespace)
`(`(`{`) : up block (whitespace)

#### line
`G`      : last line
`gg`     : first line
`#G`     : line <#>
`^`(`0`) : beginning (whitespace)
`$`      : end

#### word
`w`(`W`)   : next word (by whitepace)
`b`(`B`)   : back word (by whitespace)
`e`(`E`)   : end word (by whitespace) 
`ge`(`gE`) : back end word (by whitespace)

#### character
`fc` : forward to <c>

#### mark
`mc` : set mark <c>
`'c` : go to mark <c>
`'.` : last edit
`''` : before jump

#### search
`/word`  : search <word>
`n`(`N`) : next (previous)
`*`      : search word under cursor


### Editing
`>>`(`<<`) : (un)indent

#### enter insert mode
`i`(`I`)    : insert char (line)
`a`(`A`)    : after char (line)
`s`(`S`)    : substitute char (line)
`o`(`O`)    : next (previous) line
`c{motion}` : change {motion} (see [Navigation](#navigation))
- `ciw` : change inner word (under cursor)
- `cfx` : change forward to <x>

#### delete (cut), yank (copy), paste
`x`(`X`)         : delete (backspace)
`dd`             : delete line
`d#d`            : delete <#> lines
`["r]d{motion}`  : delete <motion> into register <r>
                   (see [navigation](#navigation))
- `diw`          : delete inner word (under cursor)
- `dfx`          : delete forward to <x>
yank: same as delete with `d` &rarr; `y`
`["r]p`(`P`)     : paste after (before) from register <r>

`u`      : undo
`Ctrl-r` : redo

### Record / playback
`.`  : repeat last edit
`qx` : start recording to register <x>
`q`  : stop recording
`@x` : playback from register <x>
`@@` : repeat last playback

### Windows
`:sp`(`vsp`)       : split horizontally (vertically)
`Ctrl-w Ctrl-w`    : cycle focus
`Ctrl-w{direction} : move focus
`Ctrl-w +`(`-`)    : taller (shorter)
`Ctrl-w >`(`<`)    : wider (narrower)
