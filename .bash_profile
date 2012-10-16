export HISTCONTROL=ignoredups

if [ -f "$HOME/.bash_aliases" ]; then
	. "$HOME/.bash_aliases"
fi

if [ -f "$HOME/.bash_prompt" ]; then
	. "$HOME/.bash_prompt"
fi

if [ -f "$HOME/.bash_aliases_eprize" ]; then
	. "$HOME/.bash_aliases_eprize"
fi

if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

umask 002
stty stop ''
