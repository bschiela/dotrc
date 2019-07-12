if [[ $OSTYPE == "darwin"* ]]; then  # macOS
  export CLICOLOR=1
  export LSCOLORS=gxfxcxdxbxegedabagacad
fi

PS1='[\#]\u@\h:\w\$ '
