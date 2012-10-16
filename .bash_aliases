# General linux command fixes
alias dir='ls --color=auto --format=vertical'
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

# Servers
alias pwless='ssh-copy-id -i ~/.ssh/id_rsa.pub'

# Local
alias addSpace="defaults write com.apple.dock persistent-apps -array-add '{\"tile-type\"=\"spacer-tile\";}'"

growl() { echo -e $'\e]9;'${1}'\007' ; return  ; }

