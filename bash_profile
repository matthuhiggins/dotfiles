export EDITOR='mate -w'
export PS1='\w$(__git_ps1 " (%s)"):'
export PATH=/usr/local/bin:$PATH

source ~/.git-completion.bash
source ~/.rvm/scripts/rvm