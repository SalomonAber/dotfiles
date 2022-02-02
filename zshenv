eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
export GPG_TTY=$(tty)

eval $(dircolors ~/.dircolors)

GOPATH=~/go
PATH="$GOPATH/bin:$HOME/.local/bin:$PATH"
