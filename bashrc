#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
    \e]P0000000
    \e]P1a54242
    \e]P28c9440
    \e]P3de935f
    \e]P45f819d
    \e]P585678f
    \e]P65e8d87
    \e]Pfffffff
    \e]P8666666
    \e]P9cc6666
    \e]PAb5bd68
    \e]PBf0c674
    \e]PC81a2be
    \e]PDb294bb
    \e]PE8abeb7
    \e]PFeeeeee
  "
  # get rid of artifacts
  clear
fi

alias ls='ls --color=auto'
PS1='[\u \W]\$ '

eval $(keychain --eval --quiet --noask --nogui --agents ssh,gpg id_ed25519)
