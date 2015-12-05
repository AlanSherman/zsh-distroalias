# checks /etc/issue and /etc/issue.net to for current distro
if [ -d /cygdrive ] ; then
  #best to cry 
elif [ -n "`egrep -si 'Ubuntu|Debian|Mint' /etc/issue* /etc/*release*`" ] ; then
  alias install='sudo apt-get install'
  alias remove='sudo apt-get remove'
  alias search='apt-cache search'
  alias update='sudo apt-get update'
  alias upgrade='sudo apt-get update && sudo apt-get upgrade'
elif [ -n "`egrep -si 'CentOS|Red Hat|Fedora' /etc/issue* /etc/*release*`" ] ; then
  alias install='sudo yum install'
  alias remove='sudo yum remove'
  alias search='yum search'
  alias update='sudo yum update'
elif [ -n "`uname | grep -si 'Darwin'`" ] ; then
  alias install='brew install'
  alias remove='brew uninstall'
  alias search='brew search'
  alias update='brew update'
else
  echo "distro not found by zsh-distroalias.plugin.zsh"
fi
