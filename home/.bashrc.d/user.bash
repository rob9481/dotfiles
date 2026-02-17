export DEPOT_TOOLS_METRICS=0
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export EDITOR=vim
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01';
export HISTFILESIZE=100000
export HISTSIZE=500000
export JQ_COLORS='1;30:0;37:0;37:0;37:0;32:1;37:1;37'
export PROMPT_COMMAND='history -a';
export PS1='\[\033[1;32m\]\[\e]0;\u@\h \w \t\a\]\u@\h \w \t\\$\[\033[0m\] '

shopt -s histappend
shopt -s checkwinsize
shopt -s extglob
shopt -s globstar
shopt -s checkjobs

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias egrep='grep --color=auto --extended-regexp'
alias fgrep='grep --color=auto --fixed-strings'
alias ggrep='grep --color=auto --perl-regexp'
alias grep='grep --color=auto'

alias open=xdg-open # or kioclient exec ...
alias serve='python3 -m http.server'

alias la="ls --color=auto --almost-all"
alias ll="ls --color=auto --almost-all --format=long"
alias ls="ls --color=auto"

function mkcd {
  mkdir -- "$1" && cd -- "$1"
}

# rm (to trashcan)
function rmg {
  if [[ $XDG_CURRENT_DESKTOP == KDE ]]; then
    kioclient5 move "$@" 'trash:/'
  else
    gio trash "$@"
  fi
}
