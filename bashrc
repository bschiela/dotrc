[[ $- != *i* ]] && return

if [[ $OSTYPE == darwin* ]]; then  # macOS, BSD
  export CLICOLOR=1
  export LSCOLORS=gxfxcxdxbxegedabagacad
elif [[ $OSTYPE == linux-gnu* ]]; then # WSL, GNU
  alias ls="ls --color=auto"
  eval $(dircolors -b ~/.dir_colors)
  # forward GUIs to Xming on WSL
  export DISPLAY=$(awk '/nameserver / {print $2; exit}' /etc/resolv.conf 2>/dev/null):0
  export LIBGL_ALWAYS_INDIRECT=1
fi

PS1='[\!]\[\e[33;4m\]\u@\h\[\e[00m\]:\[\e[36m\]\w\[\e[00m\]$([ \j -ne 0 ] && echo \(\j\))\$ '

export HISTTIMEFORMAT="[%_m/%d %a %_I:%M:%S %p] "

alias mv='mv -i'
alias cp='cp -i'
alias clear='clear -x'
alias ll='ls -lh'

