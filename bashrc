# Setting 256 colors for terminal
export TERM=xterm-256color

# User specific aliases and functions
alias ls='ls -h --color=auto'
alias ll='ls -l'

# Git stuff
alias gst='git status'
alias gco='git commit -m'
alias ga='git add'
alias glog='git log'
alias gdiff='git diff'
#alias git="git-achievements"

# Emacs stuff
alias ec='emacsclient --no-wait'
alias em='emacsclient -t -nw'
alias eg='emacs --geometry=120x64'

# Django
alias rr="python manage.py runserver"
alias shellplus="python manage.py shell_plus"

# Django completion
if [ -f $HOME/scripts/django_bash_completion.sh ]; then
    $HOME/scripts/django_bash_completion.sh
fi

# Mem. processes
alias mempro="ps -u arturo -o rss,comm"

# Displaying git branch inside prompt
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local GREEN="\[\033[0;32m\]"
  local WHITE="\[\033[0;37m\]"

PS1="[\u@\h \w$GREEN\$(parse_git_branch)]$WHITE\$ "
PS2='> '
PS4='+ '
}
proml

# virtualenv and virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
source /etc/bash_completion.d/virtualenvwrapper

# auto-completion for git commands
source /etc/bash_completion.d/git

# Ruby Version Manager: Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
