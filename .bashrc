[[ $- != *i* ]] && return

if [[ $OSTYPE == darwin* ]]; then  # macOS
  export CLICOLOR=1
  export LSCOLORS=gxfxcxdxbxegedabagacad
fi

PS1='[\!]\[\e[33;4m\]\u@\h\[\e[00m\]:\[\e[36m\]\w\[\e[00m\]$([ \j -ne 0 ] && echo \(\j\))\$ '

export HISTTIMEFORMAT="[%_m/%d %a %_I:%M:%S %p] "
