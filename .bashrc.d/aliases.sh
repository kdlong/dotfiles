# Common aliases

alias rebash="pushd ~ && . .bashrc && popd"
alias sshlpc="ssh -tY cmslpc25.fnal.gov 'echo \$DISPLAY > ~/.Xdisplay && ~/local/bin/tmux attach'"
alias sshhep="ssh -tY hep 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
alias vi=vim

# uwlogin@cern specific aliases
echo $HOSTNAME|grep -q 'uwlogin.cern.ch' || return

alias git=/cms/sw/git/bin/git
