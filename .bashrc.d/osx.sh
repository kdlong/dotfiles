# OS X customizations
[ $(uname) == "Darwin" ] || return

# Some mac-specific aliases
alias vi=vim
alias ls="command ls -G"
alias ll="ls -lhG"

alias sshuwremote="ssh -tY uwlogin_remote 'echo \$DISPLAY > ~/.Xdisplay && tmux attach'"
