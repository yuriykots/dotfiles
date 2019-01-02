# Set up for pyenv. Virtualwrapper.
export WORKON_HOME=~/.ve
export PROJECT_HOME=~/projects
eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy

# Terminal colors
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Bash history remove dublicates
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# bash_completion installed with homebrew. $brew install bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# django completion
if [ -f ~/.django/django_bash_completion ]; then
   . ~/.django/django_bash_completion
fi

# alias
alias pmpy="python manage.py"
alias pmp="python manage.py"
alias run='find . -name "*.pyc" -exec rm -f {} \; && python manage.py runserver'
alias pycclean='find . -name "*.pyc" -exec rm -f {} \;'
alias devset='atom /Users/admin/projects/americana/americana/settings/development.py'
alias gitk="gitk --all"

# Always enable GREP colors
export GREP_OPTIONS='--color=auto'
# prompt colors/format
# PS1='\[\033[1;32m\]\u \[\033[00;34m\]{ \[\033[01;34m\]\w \[\033[00;34m\]}\[\033[1;32m\]'
PS1='\[\033[1;32m\]\u \[\033[00;34m\]{ \[\033[01;34m\]\w \[\033[00;34m\]}\[\033[1;32m\]$(__git_ps1 " (%s)") -> \[\033[00m\]'

# LIST OF COLORS
#BLACK="\[\033[0;30m\]"
#BLACKBOLD="\[\033[1;30m\]"
#RED="\[\033[0;31m\]"
#REDBOLD="\[\033[1;31m\]"
#GREEN="\[\033[0;32m\]"
#GREENBOLD="\[\033[1;32m\]"
#YELLOW="\[\033[0;33m\]"
#YELLOWBOLD="\[\033[1;33m\]"
#BLUE="\[\033[0;34m\]"
#BLUEBOLD="\[\033[1;34m\]"
#PURPLE="\[\033[0;35m\]"
#PURPLEBOLD="\[\033[1;35m\]"
#CYAN="\[\033[0;36m\]"
#CYANBOLD="\[\033[1;36m\]"
#WHITE="\[\033[0;37m\]"
#WHITEBOLD="\[\033[1;37m\]"
#RESETCOLOR="\[\e[00m\]"