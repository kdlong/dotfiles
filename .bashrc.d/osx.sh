# OS X customizations
[ $(uname) == "Darwin" ] || return

# ROOT
. /usr/local/bin/root/bin/thisroot.sh

# Some mac-specific aliases
alias vi=vim
alias ls="command ls -G"
alias ll="ls -lhG"
