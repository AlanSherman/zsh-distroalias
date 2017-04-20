# checks /etc/issue and /etc/issue.net to for current distro
if [ -d /cygdrive ] ; then
  #best to cry 
elif [ -n "`grep -q -Esi 'Ubuntu|Debian|Mint' /etc/issue* /etc/*release*`" ] ; then
  alias install='sudo apt-get install'
  alias remove='sudo apt-get remove'
  alias search='apt-cache search'
  alias update='sudo apt-get update'
  alias upgrade='sudo apt-get update && sudo apt-get upgrade'
  alias ls='ls --color'            # classify files in colour
  alias ll='ls -lah --color'           # long list
elif [ -n "`grep -q -Esi 'CentOS|Red Hat|Fedora' /etc/issue* /etc/*release*`" ] ; then
  alias install='sudo yum install'
  alias remove='sudo yum remove'
  alias search='yum search'
  alias update='sudo yum update'
  alias ls='ls --color'            # classify files in colour
  alias ll='ls -lah --color'           # long list
elif [ -n "`uname | grep -si 'Darwin'`" ] ; then
  alias install='brew install'
  alias remove='brew uninstall'
  alias search='brew search'
  alias update='brew update'
  alias ls='ls -G'            # classify files in colour
  alias ll='ls -lahG'           # long list
  source <(kubectl completion zsh)
else
  echo "distro not found by zsh-distroalias.plugin.zsh"
fi
