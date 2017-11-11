BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

export PS1='${debian_chroot:+($debian_chroot)}\[\033[38;5;32m\]\u:\[\033[38;5;34m\]\W\[\033[38;5;14m\]$(__git_ps1 " (%s)")\[\033[00m\]$ '

alias pr='cd /mnt/c/Projects'
alias ebash='vim ~/.bash_aliases'
alias rbash='. ~/.bashrc'
alias gitca='git commit -a -m $1'
#alias ssh='lssh'
alias docker='docker.exe'
alias docker-compose='docker-compose.exe'
alias projects='cd /mnt/c/projects/'

PATH="$HOME/bin:$HOME/.local/bin:$PATH"
PATH="$PATH:/mnt/c/Program\ Files/Docker/Docker/resources/bin"

function lssh(){
	############
	#ssh agent
	env=~/.ssh/agent.env

	agent_load_env () { test -f "$env" && . "$env" >| /dev/null ; }

	agent_start () {
	   (umask 077; ssh-agent >| "$env")
	 . "$env" >| /dev/null ; }

	agent_load_env

	# agent_run_state: 0=agent running w/ key; 1=agent w/o key; 2= agent not running
	agent_run_state=$(ssh-add -l >| /dev/null 2>&1; echo $?)

	if [ ! "$SSH_AUTH_SOCK" ] || [ $agent_run_state = 2 ]; then
	    agent_start
	    ssh-add
	elif [ "$SSH_AUTH_SOCK" ] && [ $agent_run_state = 1 ]; then
	    ssh-add
	fi

	unset env
	###########
}

function checksum {
	echo "$1 $2" | sha256sum -c
}

