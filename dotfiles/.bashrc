# Auto-screen invocation. see: http://taint.org/wk/RemoteLoginAutoScreen
# if we're coming from a remote SSH connection, in an interactive session
# then automatically put us into a screen(1) session.   Only try once
# -- if $STARTED_SCREEN is set, don't try it again, to avoid looping
# if screen fails for some reason.
if [ "$PS1" != "" -a "${STARTED_SCREEN:-x}" = x -a "${SSH_TTY:-x}" != x ] 
then
  STARTED_SCREEN=1 ; export STARTED_SCREEN
        screen -RR && exit 0
      # normally, execution of this rc script ends here...
      echo "Screen failed! continuing with normal bash startup"
      fi  
# [end of auto-screen snippet]


# Colors ----------------------------------------------------------
#export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;31'
export EDITOR=vim

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'" # lists all the colors

PS1="\[${COLOR_PURPLE}\]\\h\[${COLOR_NC}\]:\W\[${COLOR_BLUE}\]\$(__git_ps1 2> /dev/null)\[${COLOR_NC}\] \u\$ "                                                                                                                              
export GIT_PS1_SHOWDIRTYSTATE=true                                                                                                                                                       
export GIT_PS1_SHOWUNTRACKEDFILES=true

export JAVA_HOME=`/usr/libexec/java_home 2> /dev/null`

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

alias hasspid="ps aux | grep hass | grep -v grep | awk '{print $2}'"
alias killhass="kill -9 $(hasspid)"
