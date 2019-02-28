#
# ~/.bash_profile
#

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  export $(dbus-launch)
  exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
