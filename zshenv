export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"
export GPG_TTY=$(tty)

eval $(dircolors ~/.dircolors)

GOPATH=~/go
PATH="$GOPATH/bin:$HOME/.local/bin:$PATH"
