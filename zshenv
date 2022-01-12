eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
export GPG_TTY=$(tty)
