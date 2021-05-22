if [[ -z "${DISPLAY}" ]] && [[ "$(tty)" = "/dev/tty1" ]]; then
	exec startx 2>&1 /dev/null
fi
