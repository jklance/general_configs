# General linux command fixes

if [ "$OS" == "osx" ]; then
    alias ls='ls -G'
else
    alias ls='ls --color=auto'
fi
alias dir='ls --format=vertical'
alias ll='ls -l'
alias lls='ls -a1'
alias lsa='ls -a '
alias lss='ls -als '

alias vi='vim'
alias vir='vim -R'
alias vimm='vim'

alias echo='echo -e'

alias gcurl='curl -i'
alias pcurl='curl -i -X POST'

alias grep='grep --color'

alias glcc='opengl_compile'

# Servers
alias pwless='ssh-copy-id -i ~/.ssh/id_rsa.pub'

# Local
alias addSpace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'"

growl() { echo -e $'\e]9;'${1}'\007' ; return  ; }

opengl_compile() { gcc -o $1 $1.cpp -framework Carbon -framework OpenGL -framework GLUT ;}

function ttitle() { echo -ne "\033]0;"$@"\007" ;}
