###################################
#          ENVIROMENT             #
###################################
export RIDE_PATH=/home/pablo/ride
export PATH=$PATH:/home/pablo/ride/bin/
export CLASSPATH=$CLASSPATH:/home/pablo/ride/class/
export LD_LIBRARY_PATH=/home/pablo/ride/lib/
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.5
export ZSH=/home/pablo/.oh-my-zsh


###################################
#          ZSH CONFIG             #
###################################

ZSH_THEME="avit"

ENABLE_CORRECTION="false"

plugins=(git command-not-found gradle pip python sudo web-search wd)

source $ZSH/oh-my-zsh.sh

DISABLE_CORRECTION="true"
###################################
#          ALIASES                #
###################################

alias server="ssh server -t tmux a"

###################################
#          FZF CONFIG             #
###################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
