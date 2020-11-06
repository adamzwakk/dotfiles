#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f ${XDG_CONFIG_HOME:-$HOME/.config}/aliases ] && source ${XDG_CONFIG_HOME:-$HOME/.config}/aliases >/dev/null 2>&1

