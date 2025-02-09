# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc


OPENER="xdg-open"
export TERMINAL="st"
export BROWSER="firefox"
export EDITOR="vim-x11"

#Java
export PATH="/usr/lib/jvm/openjdk21/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/openjdk21"
export PATH="$JAVA_HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin"
export PATH_TO_FX='/opt/javafx-sdk-23.0.1/lib/'



  

doas loadkeys $HOME/.config/loadkeys/loadkeysrc 

[[ ! $DISPLAY && $(tty) = "/dev/tty1" ]] && startx
