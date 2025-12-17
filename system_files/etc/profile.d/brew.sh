#!/usr/bin/env bash
if [[ -d /home/linuxbrew/.linuxbrew && $- == *i* ]] ; then
  export HOMEBREW_PREFIX="/home/linuxbrew/.linuxbrew"
  export HOMEBREW_CELLAR="/home/linuxbrew/.linuxbrew/Cellar"
  export HOMEBREW_REPOSITORY="/home/linuxbrew/.linuxbrew/Homebrew"
  [ -z "${MANPATH-}" ] || export MANPATH="${MANPATH#:}:"
  export INFOPATH="${INFOPATH}:/home/linuxbrew/.linuxbrew/share/info"
  export PATH="${PATH}:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin"
  if [ "$(basename $(readlink /proc/$$/exe))" == "zsh" ] ; then
    fpath[1,0]="/home/linuxbrew/.linuxbrew/share/zsh/site-functions"
  fi
fi
