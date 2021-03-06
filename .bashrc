# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=4096
HISTFILESIZE=4096

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -avF --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# execute ls when do cd
cd()
{
  builtin cd "$@" && ls -avF --color=auto
}

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Activate tmux at initial
if [ $SHLVL = 1 ]; then
  tmux
fi

#Set Emacs
export PATH="/opt/emacs/24.4/bin:$PATH"
export PATH="/home/yamafukukei/.cask/bin:$PATH"

#Set ROS Kinetic
source /opt/ros/kinetic/setup.bash
source ~/.rosrc

#Set ROS Network
export ROS_ROOT=/opt/ros/kinetic/ros
export PATH=$ROS_ROOT/bin:$PATH
export PYTHONPATH=$ROS_ROOT/core/roslib/src:$PYTHONPATH
export PYTHONPATH=$PYTHONPATH:$HOME/LeapSDK/lib:$HOME/LeapSDK/lib/x64
export PYTHONPATH=/home/yamafukukei/.local/lib/python2.7/site_packages:$PYTHONPATH
export ROS_PACKAGE_PATH=~/ros_workspace:/opt/ros/kinetic/stacks:$ROS_PACKAGE_PATH
export ROS_HOSTNAME=localhost
export ROS_MASTER_URI=http://${ROS_HOSTNAME}:11311
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export GRASPIT=$PWD
export GRASPIT=~/graspit
export GRASPIT=~/.graspit
export GAZEBO_MODEL_PATH=~/WorkSpace/industrial_ws/src/pick-place-robot/kuka_arm/models
export PATH=/usr/local/cuda-9.0/bin:${PATH}
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:${LD_LIBRARY_PATH}

#Set pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#Set ROS alias command
alias cw='cd ~/WorkSpace/catkin_ws'
alias cs='cd ~/WorkSpace/catkin_ws/src'
alias cm='cd ~/WorkSpace/catkin_ws && catkin_make'
alias matlab='/usr/local/MATLAB/R2019a/bin/matlab'
alias png2eps="~/bin/png2eps.sh"
alias fetchall="~/bin/fetchall.sh"
alias hw='~/bin/helloworld.sh'
alias kinect='roslaunch kinect2_bridge kinect2_bridge.launch publish_tf:=true'
alias moveit='roslaunch moveit_setup_assistant setup_assistant.launch'
alias leap='sudo service leapd restart && source ~/WorkSpace/leap_ws/devel/setup.bash && roslaunch leap_motion demo.launch'
alias leso='sudo service leapd restart && source ~/WorkSpace/leap_ws/devel/setup.bash'
alias apl='apm list --installed --bare > packages.txt'
alias vi='vim'
alias emacs='emacs -nw'
alias processing='sh /opt/processing/processing-3.5.3/processing'
alias blender='/usr/local/blender-2.80-linux-glibc217-x86_64/blender'
alias PhoXiControl='sudo PhoXiControl'

#ROS Convinience Command
export marked="$HOME/marked"
mark()
{
  file="unnamed"
  info="[mark] following path marked"

  mkdir -p $marked || exit 1

  for opt in "$@"
  do
    case "$@" in
      "-c" | "--catkin" )
        file="catkin"
        info="$info as catkin workspace"
        break;;
    esac
  done

  echo "$info: $(pwd | tee $marked/$file)";
}


function _update_ps1() {
    PS1="$(~/.local/bin/powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
