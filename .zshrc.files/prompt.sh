# .zshrc prompt

setopt PROMPT_SUBST

# Git stuff
function prompt_git_branch {
     git symbolic-ref --short HEAD 2>/dev/null | sed -e "s/.*/-\( %F{yellow}&%F{white} \)/"
}

# Set up the parts of my prompt
NEWLINE=$'\n'
GITBRANCH='$(prompt_git_branch)'
P_TITLEBAR="" # Removing titlebar from prompt... "\[\e]2; (\h) || \u (\W)\a\]"
P_HOSTINFO="%{$fg[white]%} || $P_GREENF$P_UNDERLINEON\H$P_WHITEF$P_UNDERLINEOFF)-(\$(prompt_computer_icon)\l)$P_RESET-" 
P_WORKDIR=$P_BOLDON$P_WHITEF"("$P_REDF"\w"$P_WHITEF")"$P_RESET
P_DATETIME=$P_BOLDON$P_WHITEF"("$P_GREENF"\t \d"$P_WHITEF")"$P_RESET
P_USERNAME=$P_BOLDON$P_WHITEF"("$P_PURPLEF"\u"$P_WHITEF")"$P_RESET
P_JOBCMDS=$P_BOLDON$P_WHITEF"(h:"$P_GREENF"\! "$P_WHITEF"j:"$P_GREENF"\j"$P_WHITEF")"$P_RESET
P_GITSTUFF="$P_BOLDON$P_WHITEF$P_YELLOWF\$(prompt_git_branch)$P_WHITEF$P_RESET"

# Set the actual prompt
#if [ -n "$SSH_CLIENT" ]; then
    PROMPT=$NEWLINE"%B%F{white}( %F{yellow}%m%F{white} || %F{green}%M%F{white} )-( %1 )-( %F{red}%~%F{white} )%b"
    PROMPT=$PROMPT$NEWLINE"%B( %F{green}%* %w%F{white} )-( %F{magenta}%n%F{white} )-( h: %F{green}%h%F{white} j: %F{green}%j%F{white} )$GITBRANCH  %# %b"

    #PS1=$P_TITLEBAR
    #PS1=$PS1$P_HOSTINFO$P_WHITEF$P_WORKDIR"\n"
    #PS1=$PS1$P_DATETIME$P_WHITEF"-"$P_USERNAME$P_WHITEF"-"$P_JOBCMDS
    #PS1=$PS1$P_GITSTUFF" %# "$P_RESET
#else
#    PS1=$P_TITLEBAR"\n"$P_JOBCMDS$P_WHITEF"-"$P_WORKDIR$P_WHITEF"-> "$P_RESET
#fi


