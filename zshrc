# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '/home/salomon/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

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
PS1='%n %1~ %# '

eval $(keychain --eval --quiet --noask --nogui --gpg2 --agents ssh,gpg id_ed25519)

GPG_TTY=$(tty)
