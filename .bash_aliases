# General linux command fixes

if [ "$OS" == "osx" ]; then
    alias ls='ls -Gh'
    alias lss='ls -Galsh'
else
    alias ls='ls -h --color=auto --group-directories-first'
    alias lss='ls -alsh --color=auto --group-directories-first'
fi
alias dir='ls --format=vertical'
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

alias fuck='sudo $(history -p \!\!)'

# Servers
alias do_snails='ssh jer_@192.241.172.169'
alias dh_cyclops='ssh jer_@jerlance.com'
alias pwless='ssh-copy-id -i ~/.ssh/id_rsa.pub'

# Local
alias addSpace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'"

growl() { echo -e $'\e]9;'${1}'\007' ; return  ; }

opengl_compile() { gcc -o $1 $1.cpp -framework Carbon -framework OpenGL -framework GLUT ;}
alias glcc='opengl_compile'

function ttitle() { echo -ne "\033]0;"$@"\007" ;}
