# Environment for login[02..06].hep.wisc.edu machines
echo $HOSTNAME|grep -q '.hep.wisc.edu' || return

if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

if [ -f /afs/hep.wisc.edu/cms/setup/bashrc ]; then
   . /afs/hep.wisc.edu/cms/setup/bashrc
fi

if touch a 2>/dev/null; then
  rm a
else
  echo "AFS Credentials expired; running kinit && aklog"
  kinit -l 30d kdlong@HEP.WISC.EDU && aklog
fi

export PATH=~/opt/texlive/bin/x86_64-linux:$PATH

if echo $HOSTNAME|grep -q 'login02'; then
  # SLC5 machine
  echo "Setting up SLC5 tweaks"
  declare -x SCRAM_ARCH="slc5_amd64_gcc462"
  export PATH=~/slc5/bin:$PATH
  export LD_LIBRARY_PATH=~/slc5/lib:$LD_LIBRARY_PATH
  export CPLUS_INCLUDE_PATH=~/slc5/include
  export TERM=screen
else
  export PATH=/cms/sw/git/bin:$PATH
  export LD_LIBRARY_PATH=~/lib:$LD_LIBRARY_PATH
  export CPLUS_INCLUDE_PATH=~/include
fi

# Make git stop searching before hitting /afs networked directory
export GIT_CEILING_DIRECTORIES=/afs/hep.wisc.edu

