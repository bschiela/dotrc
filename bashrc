[[ $- != *i* ]] && return

if [[ $OSTYPE == darwin* ]]; then  # macOS, BSD
  export CLICOLOR=1
  export LSCOLORS=gxfxcxdxbxegedabagacad
elif [[ $OSTYPE == linux-gnu* ]]; then # WSL, GNU
  alias ls="ls --color=auto"
  eval $(dircolors -b ~/.dir_colors)
  export DISPLAY=:0.0  # forward GUIs to Xming on WSL
fi

PS1='[\!]\[\e[33;4m\]\u@\h\[\e[00m\]:\[\e[36m\]\w\[\e[00m\]$([ \j -ne 0 ] && echo \(\j\))\$ '

export HISTTIMEFORMAT="[%_m/%d %a %_I:%M:%S %p] "

alias mv='mv -i'
