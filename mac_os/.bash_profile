export PS1="\W$ "
export PATH="/usr/local/bin:/Applications:$PATH"




# git autocompletion
source ${HOME}/.git-completion.bash
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi



export PS1='[\[\033[0;35m\]\u \[\033[0;32m\]\W\[\033[0m\]] $ '

export PATH=${PATH}:/usr/local/go/bin
export GOPATH=${HOME}/go
export PATH=${PATH}:${GOPATH}/bin
#export CDPATH=.:${GOPATH}/src

function cs () {
    cd "$@" && ls
}

function cd() {
    new_directory="$*";
    if [ $# -eq 0 ]; then 
        new_directory=${HOME};
    fi;
    builtin cd "${new_directory}" && ls
}

alias mv='mv -i'
alias cp='cp -i'
alias rm='rm -i'
alias ls='ls -G'
alias sl='ls -G'
alias gs='git status'
alias diff='colordiff'
alias tree='tree -a'
alias authors='git log | grep "Author: " | cut -d" " -f2,3 | sort | uniq -c | sort -nr'


export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# bash completion with macports
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi
