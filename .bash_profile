echo "Session starting... $(date +%x) $(date +%X)"

export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
#export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

# enable bash completions
if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi


set -o noclobber
set -o ignoreeof    # do not exit shell on ^D

# this affects 'ls'
export CLICOLOR=1

# this affects 'less', including when being used as the system pager
#export LESS='-ij6'
# unfortunately git doesn't like this and gets hosed with 'git log'
# instead:
#export MANPAGER='less -sRij6'
#export MANCOLOR=1
# new alternative for manpager:
export MANPAGER="nvim +Man!"

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

FUNCNEST=1000

# prompts
#PS1="\[\e]0;**ALERT**    \@    ::    \w\a\]#\! /\W \[\e[1;32m\][\j] \[\e[1;31m\]$\[\e[m\] "
#PS1='\[\e[1;31m\]\$\[\e[m\] '
PS1='\[\e[36m\]\W \[\e[1;31m\]\$\[\e[m\] '

# add the "git" prompt as per git-prompt.sh
# original as given:
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# with my additions:
PS1='\[\e[33m\]\w \[\e[36m\]$(__git_ps1 "(%s)")\[\e[1;31m\]\$\[\e[m\] '

# I don't want color around the git element bc i'm letting it color itself
PS1='\[\e[33m\]\w \[\e[m\]$(__git_ps1 "(%s)")\[\e[1;31m\]\$\[\e[m\] '

#if [ -f ~/.bash_aliases ]; then
#    . ~/.bash_aliases
#fi

export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="auto"

#This is done in the nvm.sh script:
#export NVM_DIR="$HOME/.nvm"
# This loads nvm
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
# This loads nvm bash_completion
# not necessary, it's also in that main completions folder which I already sourced everything in there
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"


for f in ~/.{bash_aliases,bash_functions,bashrc,bash_locations}; do
  [ -e "$f" ] && source "$f";
done;
unset f;
