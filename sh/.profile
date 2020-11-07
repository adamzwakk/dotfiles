#!/bin/sh

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
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"

[[ -f ~/.bashrc ]] && . ~/.bashrc
