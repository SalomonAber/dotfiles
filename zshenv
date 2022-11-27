export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/keyring/ssh"
export GPG_TTY=$(tty)


if [ -f ~/.config/monitorlayout ] ; then
  monitorlayout=$(<~/.config/monitorlayout)
  case $monitorlayout in
    builtin)
      export GDK_SCALE=2
      export GDK_DPI_SCALE=0.5
      export QT_AUTO_SCREEN_SET_FACTOR=0
      export QT_SCALE_FACTOR=2
      export QT_FONT_DPI=96
      ;;
  esac
fi

eval $(dircolors ~/.dircolors)

GOPATH=~/go
PATH="$GOPATH/bin:$HOME/.local/bin:$PATH"
