# Environment for uwlogin.cern.ch
echo $HOSTNAME|grep -q 'lxplus' || echo $HOSTNAME | grep -q "cmswmass" || return

if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

if [ -f /cms/setup/bashrc ]; then
    . /cms/setup/bashrc
fi

if touch a 2>/dev/null; then
  rm a
else
  echo "AFS Credentials expired; running kinit && aklog"
  kinit -l 30d kelong@CERN.CH && aklog
fi

export PATH=~/opt/texlive/bin/x86_64-linux:$PATH
export PATH=/cms/sw/git/bin:$PATH
export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
export CPLUS_INCLUDE_PATH=~/include

alias ls="ls --color=auto" 
