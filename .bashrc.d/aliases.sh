# Common aliases

alias rebash="pushd ~ && . .bashrc && popd"
alias sshlpc="ssh -tY cmslpc25.fnal.gov"
alias sshhep="ssh -tY hep"
alias uwl="kinit -k -t ~/private/kelong.keytab kelong@CERN.CH && ssh -Y kelong@uwlogin"
#alias uwlh="kinit -k -t ~/private/kelong.keytab kelong@CERN.CH && ssh kelong@lxplus712.cern.ch -t ssh uwlogin"
alias uwlh="ssh kelong@lxplus716.cern.ch -t ssh uwlogin"
#Use uwli (initialize), then make a new tab and run uwlx (x11) for x11 forwarding
alias uwli="ssh kelong@lxplus.cern.ch -L 8888:uwlogin.cern.ch:22"
alias uwlx="ssh kelong@localhost -p 8888 -X"
alias ll6="ssh -Y kdlong@login06.hep.wisc.edu"
alias ll1="ssh -Y kdlong@login01.hep.wisc.edu"
alias lxp="kinit -k -t ~/private/kelong.keytab && ssh kelong@lxplus.cern.ch"
alias lxp016="kinit -k -t ~/private/kelong.keytab && ssh kelong@lxplus016.cern.ch"
alias csctunnel="ssh -C -t -L 1080:localhost:4321 kelong@lxplus.cern.ch ssh -C -D 4321 kelong@cmsusr"
alias csctunnelcern="ssh -C -t -L 1080:localhost:4321 kelong@cmsusr"
alias vi=vim
