# Environment for uwlogin.cern.ch machines
echo $HOSTNAME|grep -q 'uwlogin.cern.ch' || return

export PATH=/cms/sw/git/bin:$PATH
if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

if touch a 2>/dev/null; then
  rm a
else
  echo "AFS Credentials expired; running kinit && aklog"
  kinit -l 30d kelong@CERN.CH && aklog
fi

# Make git stop searching before hitting /afs networked directory
export GIT_CEILING_DIRECTORIES=/afs/cern.ch
. /data/cms/setup/bashrc

# Aliases
alias procrastinate="watch -n 30 'condor_q kelong | tail -n 40'"
