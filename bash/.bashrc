#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

export XDG_CONFIG_HOME="$HOME/.config"

export WEECHAT_HOME="$XDG_CONFIG_HOME"/weechat

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '

alias bedtime='xbacklight -set 5 && pkill -RTMIN+11 dwmblocks && redshift -x -P -O 1500 > /dev/null 2>&1'
alias awake='xbacklight -set 60 && pkill -RTMIN+11 dwmblocks && redshift -x > /dev/null 2>&1'

alias yyy='yay -Syu'
alias la='ls -la'
alias stdf="stow --target=$HOME"
