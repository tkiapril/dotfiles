#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias sudo='sudo '  # sudo alias fix: http://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo
alias vi='vim'
alias vim='nvim'
alias abs='ABSROOT=. abs'
alias makepkg="time CFLAGS='-Os' LDFLAGS='-Os' CPPFLAGS='-Os' CXXFLAGS='-Os' CFLAGS_APPEND='-Os' LDFLAGS_APPEND='-Os' CPPFLAGS_APPEND='-Os' CXXFLAGS_APPEND='-Os' MAKEFLAGS='-j8' makepkg: alert"
alias minicom="MINICOM='-c on' minicom"

alias beep="echo -ne \"\\007\""
alias alert="beep;sleep 0.1;beep;sleep 0.1;beep;sleep 0.1;beep;sleep 0.1;beep"
