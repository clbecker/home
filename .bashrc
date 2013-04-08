# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f /home/cbecker/git-completion ]; then
	. /home/cbecker/git-completion
fi

hostname="$(hostname)"

export TMOUT=0;

mesg n

export LOG_PATH=/tmp
export PATH=/sbin:/usr/sbin:/usr/local/sbin:$HOME/utilities:$HOME/bin:/usr/local/bin:$PATH:
export LANG=C
umask 002

export LS_COLORS='no=00:fi=00;37:di=00;96:ln=00;91:pi=40;33:so=00;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;32:*.cmd=00;32:*.exe=00;32:*.com=00;32:*.btm=00;32:*.bat=00;32:*.sh=00;32:*.csh=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.bz=00;31:*.tz=00;31:*.rpm=00;31:*.cpio=00;31:*.jpg=00;35:*.gif=00;35:*.bmp=00;35:*.xbm=00;35:*.xpm=00;35:*.png=00;35:*.tif=00;35:*.pl=00;33::*.pm=00;93:'

export PS1="\[\e[0;36m\]\d \t\[\e[0m\] \[\e[0;33m\]\u@\[\e[0m\]\[\e[0;31m\]\h\[\e[0m\]{\[\e[1;33m\]\W\[\e[0m\]}->"

if [ $WINDOW ]; then
export PS1="\[\e[0;36m\]\d \t\[\e[0m\] \[\e[0;33m\]\u@\[\e[0m\]\[\e[0;31m\]\h\[\e[0m\][$WINDOW]{\[\e[1;33m\]\W\[\e[0m\]}->"
fi

alias ubergitlog="git log --graph --pretty=format:'%Cred%h%Creset - %Cgreen(%cr) %C(bold blue)<%an>%Creset %s %C(yellow)%d%Creset ' --abbrev-commit --date=relative"
