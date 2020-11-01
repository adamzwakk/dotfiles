#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | paste -sd ':')"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"

# Config cleanup Crew
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WEECHAT_HOME="$XDG_CONFIG_HOME/weechat"
alias less='less --lesskey-file=$XDG_CONFIG_HOME/lesskey'
alias less='man --pager="less --lesskey-file=$XDG_CONFIG_HOME/lesskey"'

# Just nice to have aliases
alias ls='ls --color=auto'
alias bedtime='xbacklight -set 1 && pkill -RTMIN+11 dwmblocks && redshift -x -r -P -O 1500 > /dev/null 2>&1'
alias awake='xbacklight -set 60 && pkill -RTMIN+11 dwmblocks && redshift -x -r > /dev/null 2>&1'

alias yyy='yay -Syu'
alias la='ls -la'
alias stdf="stow --target=$HOME"
