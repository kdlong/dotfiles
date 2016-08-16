# Common aliases

alias rebash="pushd ~;. .bashrc;popd"
alias sshlpc="ssh -tY cmslpc25.fnal.gov 'echo \$DISPLAY > ~/.Xdisplay && ~/local/bin/tmux attach'"
alias sshhep="ssh -tY hep 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias cq="condor_q $USER"
alias vi=vim
alias setupcrab="source /cvmfs/cms.cern.ch/crab3/crab.sh"
alias sshuw="ssh -tY uwlogin 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
