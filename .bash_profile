

export PATH="/usr/local/bin:/usr/local/share/python:/usr/local/share/npm/bin:${PATH}"
export PATH="/user/local/opt/ruby192/bin:${PATH}"


alias g="git"
alias v="vim"
alias e="emacs"

# Set git autocompletion and PS1 integration                                                                                                                                                                
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    source /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
    source /opt/local/etc/bash_completion
fi

PS1="\n\w:\[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.scan(/^\*.*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$\n"
export PS1

flush-mc() {
    echo "flush_all\n quit" | nc localhost 1121
}

run-ff() {
    while true
        do rm *.pyc
        rm */*.pyc
        flush-mc
        python ff.py $*
        sleep 1
    done
}






