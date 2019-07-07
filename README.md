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
