[[ $- != *i* ]] && return

set -o vi

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

export GIT_PS1_DESCRIBE_STYLE=branch
export GIT_PS1_SHOWDIRTYSTATE=yes
export GIT_PS1_SHOWSTASHSTATE=yes
export GIT_PS1_SHOWUNTRACKEDFILES=yes
export GIT_PS1_SHOWUPSTREAM=yes
PS1_GIT='\[\e[33;4m\]\u@\h\[\e[00m\]:\[\e[36m\]\w\[\e[00m\]\[\e[32m\]$(__git_ps1)\[\e[00m\]\n[$?]$([ \j -ne 0 ] && echo \(\j\))\$ '
PS1_NOGIT=PS1='\[\e[33;4m\]\u@\h\[\e[00m\]:\[\e[36m\]\w\[\e[00m\]\[\e[32m\]\[\e[00m\]\n[$?]$([ \j -ne 0 ] && echo \(\j\))\$ '
PS1=$PS1_GIT

export HISTTIMEFORMAT="[%_m/%d %a %_I:%M:%S %p] "
export HISTCONTROL=ignoreboth
export EDITOR=vim
export PATH="~/bin:$PATH"

alias mv='mv -i'
alias cp='cp -i'
alias clear='clear -x'
alias ll='ls -lh'
alias grep='grep -n --color=auto'
alias emacs='emacs -nw'
alias cat='batcat'
alias tail='tail ---disable-inotify'  # WSL

export FZF_DEFAULT_OPTS='--bind alt-j:down,alt-k:up'

eval `keychain --agents ssh --eval ~/.ssh/git_ed25519`
