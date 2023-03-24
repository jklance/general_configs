# zshrc Aliases

alias ls='ls -Gh'
alias lss='ls -Galsh'

alias dir='ls --format=vertical'
alias lscsv='ls -m'
alias ll='ls -l'
alias lls='ls -a1'
alias lsa='ls -a '

alias vi='vim'
alias vir='vim -R'
alias vimm='vim'

alias echo='echo -e'

alias gcurl='curl -i'
alias pcurl='curl -i -X POST'

alias grep='grep --color'

alias xmlcheck='xmllint --format '
alias slideshow='asciidoc --backend slidy'

alias fuck='sudo $(history -p \!\!)'

# Servers
alias pwless='ssh-copy-id -i ~/.ssh/id_rsa.pub'

# Git stuff
alias resetrepo='git fetch upstream; git checkout master; git reset --hard upstream/master; git push origin master --force'
alias gupdate='git fetch --all; git pull'

# K8s stuff
alias kl='kubectl'
