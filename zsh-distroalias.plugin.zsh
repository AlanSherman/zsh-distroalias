# checks /etc/issue and /etc/issue.net to for current distro
if [ -n "`egrep -i 'Ubuntu|Debian|Mint' /etc/issue*`" ] ; then
  alias install='sudo apt-get install'
  alias remove='sudo apt-get remove'
  alias search='apt-cache search'
  alias update='sudo apt-get update'
  alias upgrade='sudo apt-get update && sudo apt-get upgrade'
fi

if [ -n "`egrep -i 'CentOS|Red Hat|Fedora' /etc/issue*`" ] ; then
  alias install='sudo yum install'
  alias remove='sudo yum remove'
  alias search='yum search'
  alias update='sudo yum update'
fi
