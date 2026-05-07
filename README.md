Environment configuration files (dotfiles, rc files, etc.).

Installation
------------
Clone and run the `install` script:

```sh
$ git clone https://github.com/bschiela/dotrc.git ~/repos/dotrc
$ ~/repos/dotrc/install
```

> Plugins are automatically installed the first time `vim` is executed.

TODO
----
- [ ] Move global configs to a `home/` directory so you can just `stow home -t
  ~` to install.  Currently global configs are mixed in with project-level
configs and it's messy.
