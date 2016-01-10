#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


# Initialize rbenv when available
if [[ -d $HOME/.rbenv/bin ]]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
fi


alias sudo='sudo '  # sudo alias fix: http://askubuntu.com/questions/22037/aliases-not-available-when-using-sudo


# Use nvim or vim if present
if hash nvim 2>/dev/null; then
    VIM_PRESENT=true
    export EDITOR=nvim
    alias vim='nvim'
elif hash vim 2>/dev/null; then
    VIM_PRESENT=true
    export EDITOR=vim
fi

[[ $VIM_PRESENT = true ]] && alias vi='vim'


alias abs='ABSROOT=. abs'
alias makepkg="time CFLAGS='-Os' LDFLAGS='-Os' CPPFLAGS='-Os' CXXFLAGS='-Os' CFLAGS_APPEND='-Os' LDFLAGS_APPEND='-Os' CPPFLAGS_APPEND='-Os' CXXFLAGS_APPEND='-Os' MAKEFLAGS='-j8' makepkg; alert"
alias startx='startx ~/.xinitrc'
alias startx2go='startx x2go'

alias beep="echo -ne \"\\007\""
alias alert="beep;sleep 0.1;beep;sleep 0.1;beep;sleep 0.1;beep;sleep 0.1;beep"
