export HISTCONTROL=ignoredups
export PATH=/opt/toysdk/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced


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
