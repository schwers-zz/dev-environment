# Set git autocompletion and PS1 integration
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
    source /usr/local/git/contrib/completion/git-completion.bash
fi
GIT_PS1_SHOWDIRTYSTATE=true

if [ -f /opt/local/etc/bash_completion ]; then
    source /opt/local/etc/bash_completion
fi

PS1="\w:\[\033[31m\]\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`\[\033[37m\]$ "
export PS1

#Aliasses
alias g=git
alias e=emacs
alias v=vim

# MacPorts Installer addition on 2012-05-14_at_15:02:09: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

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
