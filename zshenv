export GPG_TTY=$(tty)

eval $(dircolors ~/.dircolors)

GOPATH=~/go
PATH="$GOPATH/bin:$HOME/.local/bin:$PATH"
