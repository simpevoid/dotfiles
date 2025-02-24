# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERM=xterm-256color
export COLORTERM=truecolor

#commands
alias ls='ls --color=auto'
alias mv='mv -i'
alias ll='ls -lh'
alias grep='grep --color=auto'
alias cdi='cd $( find . -maxdepth 1 -type d ! -name ".*" | fzy)'
alias hs='eval $(fc -lnr 1 | fzy)'

# xbps
alias i='doas xbps-install -S'
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

#apps
alias vi='vim'

set -o vi 
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert  'Control-l: clear-screen'

eval "$(zoxide init --cmd cd bash)"

PS1="\[\e[1;35m\]\w \[\e[0m\]λ "
