#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	eval $(gnome-keyring-daemon --start)
	export SSH_AUTH_SOCK
	export GPG_TTY=$(tty)

	eval $(dircolors ~/.dircolors)

	exec startx
fi
