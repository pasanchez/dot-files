###################################
#          ENVIROMENT             #
source /opt/ros/indigo/setup.zsh
source /home/pablo/sec_ws/devel/setup.zsh
###################################
export RIDE_PATH=/home/pablo/ride
export PATH=$PATH:/home/pablo/ride/bin/
export CLASSPATH=$CLASSPATH:/home/pablo/ride/class/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/pablo/ride/lib/
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

alias gbuild="./gradlew build"
alias grun="./gradlew run"
alias vrep="~/V-REP_PRO_EDU_V3_4_0_Linux/vrep.sh ~/smartelderlycar/vrep/main_scene.ttt"

###################################
#          FUNCTIONS              #
###################################

function tssh(){
    ssh -Y "$1" -t tmux a
}


###################################
#          FZF CONFIG             #
###################################

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
