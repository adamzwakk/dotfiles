#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

export EDITOR="nvim"
export BROWSER="chromium"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# Config cleanup Crew
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export LESSHISTFILE=-

# Just nice to have aliases
alias ls='ls --color=auto'
alias bedtime='xbacklight -set 1 && pkill -RTMIN+11 dwmblocks && pgrep redshift >/dev/null && killall -q -w -s 9 redshift; redshift -P -O 1500 & > /dev/null 2>&1'
alias awake='xbacklight -set 60 && pkill -RTMIN+11 dwmblocks && pgrep redshift >/dev/null && killall -q -w -s 9 redshift; redshift -P & > /dev/null 2>&1'

alias yyy='yay -Syu'
alias la='ls -la'
alias stdf="stow --target=$HOME"
