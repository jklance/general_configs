CURRPATH=`pwd`

if [ -f "$HOME/.bash_aliases" ]; then
    mv "$HOME/.bash_aliases" "$HOME/.bash_aliases.old"
fi
ln -s "$CURRPATH/.bash_aliases" "$HOME/.bash_aliases"


if [ -f "$HOME/.bash_profile" ]; then
    mv "$HOME/.bash_profile" "$HOME/.bash_profile.old"
fi
ln -s "$CURRPATH/.bash_profile" "$HOME/.bash_profile"

if [ -f "$HOME/.bash_prompt" ]; then
    mv "$HOME/.bash_prompt" "$HOME/.bash_prompt.old"
fi
ln -s "$CURRPATH/.bash_prompt" "$HOME/.bash_prompt"

if [ -d "$HOME/.vim" ]; then
    mv "$HOME/.vim" "$HOME/.vim.old"
fi
ln -s "$CURRPATH/.vim" "$HOME/.vim"

if [ -f "$HOME/.vimrc" ]; then
    mv "$HOME/.vimrc" "$HOME/.vimrc.old"
fi
ln -s "$CURRPATH/.vimrc" "$HOME/.vimrc"
