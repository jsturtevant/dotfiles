BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

alias pr='cd /mnt/c/Projects'

alias ebash='vim ~/.bash_aliases'
alias rbash='. ~/.bashrc'

export PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;32m\]\u:\[\033[38;5;34m\]\W\[\033[38;5;14m\]$(__git_ps1 " (%s)")\[\033[00m\]$ '

