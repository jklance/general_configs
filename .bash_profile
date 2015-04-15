# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTCONTROL=ignoredups
export HISTTIMEFORMAT="[%F %T] "

# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

export PATH=/opt/toysdk/bin:$PATH

# Show things in my local timezone (Detroit)
export TZ="/usr/share/zoneinfo/America/Detroit"

# Get OS
case "$OSTYPE" in
    darwin*) OS="osx";;
    linux*)  OS="linux";;
    bsd*)    OS="bsd";;
    *)       OS="other";;
esac

if [ "$OS" == "osx" ]; then
    export CLICOLOR=1
    export LSCOLORS=GxFxCxDxBxegedabagaced
fi

export PATH="$PATH:/usr/local/mysql-5.5.28-osx10.6-x86_64/bin/mysql"

if [ -f "$HOME/.bash_aliases" ]; then
    . "$HOME/.bash_aliases"
fi

if [ -f "$HOME/.bash_prompt" ]; then
    . "$HOME/.bash_prompt"
fi

if [ -f "$HOME/.bash_aliases_work" ]; then
    . "$HOME/.bash_aliases_work"
fi

if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

umask 002
stty stop ''
