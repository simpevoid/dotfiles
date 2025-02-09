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
alias cdi='cd "$( find . -maxdepth 1 -type d ! -name ".*" | fzy)"'

# xbps
alias i='doas xbps-install -S'
alias u='i; doas xbps-install -u xbps; doas xbps-install -u'
alias q='doas xbps-query -Rs'
alias r='doas xbps-remove -R'

#apps
alias vi='vim'
alias v='nvim'


set -o vi 
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert  'Control-l: clear-screen'

#eval "$(zoxide init --cmd cd bash)"

export PS1='\[\e[1;36m\]\W\[\e[0m\] \[\e[1;31m\]>\[\e[0m\] '
#PS1='[\u@\[\e[34m\]\h\[\e[m\] \w]\$ '
