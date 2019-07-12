if [[ $OSTYPE == "darwin"* ]]; then  # macOS
  export CLICOLOR=1
  export LSCOLORS=gxfxcxdxbxegedabagacad
fi

PS1='[\#]\u@\h:\w$([ \j -ne 0 ] && echo \(\j\))\$ '
