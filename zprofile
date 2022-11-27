if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  if [ -f ~/.config/monitorlayout ] ; then
    monitorlayout=$(<~/.config/monitorlayout)
    case $monitorlayout in
      builtin)
        ln -sf ~/.xresources.d/hidpi ~/.Xresources
        exec startx -- -dpi 200
        ;;
      dual)
        ln -sf ~/.xresources.d/normdpi ~/.Xresources
        exec startx -- -dpi 100
        ;;
      *)
        exec startx
        ;;
    esac
  else
    exec startx
  fi
fi
