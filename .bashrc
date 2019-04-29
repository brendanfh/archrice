#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable Ctrl-s and Ctrl-q
stty -ixon
shopt -s autocd
HISTSIZE= HISTFILESIZE=

#PS1='[\u@\h \W]\$ '
export PS1="\n\[$(tput bold)\][\[$(tput sgr0)\]\[\033[38;5;36m\]\u\[$(tput sgr0)\]\[\033[38;5;31m\]@\[$(tput sgr0)\]\[\033[38;5;36m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;88m\]\$?\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;34m\]\W\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\\n\\$\[$(tput sgr0)\] "

LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS

export EDITOR='nvim'
export TERMINAL='st'

export PATH=~/.nimble/bin:$PATH
export PATH=~/tools/wabt/out/gcc/Release:$PATH
export PATH=/home/brendan/.yarn/bin:$PATH
export PATH=~/.pub-cache/bin:$PATH
export PATH=~/.scripts:$PATH
source ~/.shortcuts

alias ls='ls --color=auto'
alias l="ls -hN -al --group-directories-first"
alias cl="clear; ls -al"
alias md="mkdir -p"
alias SS="sudo systemctl"
alias p="sudo pacman"
alias ccat="highlight --out-format=ansi"
alias v="$EDITOR"

export TODO_FILE_LOC="~/.todolist"

m() {
	man -k "^$@$" >/dev/null && man -Tpdf "$@" | zathura - ;
}

. /home/brendan/torch/install/bin/torch-activate
. /home/brendan/.cache/wal/colors.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/brendan/tools/google-cloud-sdk/path.bash.inc' ]; then . '/home/brendan/tools/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/brendan/tools/google-cloud-sdk/completion.bash.inc' ]; then . '/home/brendan/tools/google-cloud-sdk/completion.bash.inc'; fi
