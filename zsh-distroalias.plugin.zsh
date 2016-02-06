# checks /etc/issue and /etc/issue.net to for current distro
if [ -d /cygdrive ] ; then
  #best to cry 
elif [ -n "`grep -q -Esi 'Ubuntu|Debian|Mint' /etc/issue* /etc/*release*`" ] ; then
  alias install='sudo apt-get install'
  alias remove='sudo apt-get remove'
  alias search='apt-cache search'
  alias update='sudo apt-get update'
  alias upgrade='sudo apt-get update && sudo apt-get upgrade'
  alias ls='ls -HF --color'            # classify files in colour
  alias ll='ls -laF --color'           # long list
  alias la='ls -aF --color'            # all but . and ..
  alias lr='ls -lRiF --color'          # recursive ls
elif [ -n "`grep -q -Esi 'CentOS|Red Hat|Fedora' /etc/issue* /etc/*release*`" ] ; then
  alias install='sudo yum install'
  alias remove='sudo yum remove'
  alias search='yum search'
  alias update='sudo yum update'
  alias ls='ls -HF --color'            # classify files in colour
  alias ll='ls -laF --color'           # long list
  alias la='ls -aF --color'            # all but . and ..
  alias lr='ls -lRiF --color'          # recursive ls
elif [ -n "`uname | grep -si 'Darwin'`" ] ; then
  alias install='brew install'
  alias remove='brew uninstall'
  alias search='brew search'
  alias update='brew update'
  alias ls='ls -HFG'            # classify files in colour
  alias ll='ls -laFG'           # long list
  alias la='ls -aFG'            # all but . and ..
  alias lr='ls -lRiFG'          # recursive ls
else
  echo "distro not found by zsh-distroalias.plugin.zsh"
fi
