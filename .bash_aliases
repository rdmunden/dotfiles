
#! /opt/homebrew/bin/bash
alias cd..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias type='type -a'
alias stat='stat -x'
alias cp='cp -i'
alias mv='mv -i'
alias dirs='dirs -v'
alias which='which -a'

# replace with gnu grep
#alias grep='grep --color'
alias grep='ggrep --color'
alias sed='gsed'
alias find='gfind'
alias xargs='gxargs'
alias awk='gawk'

alias lsa='ls -a'
alias lsaa='ls -A'
alias lss='ls -A'
alias lsal='ls -Al'
alias lsla='lsal'
alias lsao='ls -A1'
alias lsl='ls -l'
alias lsld='ls -ld'
alias lslh='ls -lh'
alias lsz='ls -lhS'
alias ls1='ls -1'
alias lso='ls -1'
alias lsn='ls -og'
alias lsan=lsn
alias lsaaa=lsn

alias lsh="find -L -maxdepth 1 -name '.*' | sed 's/^.\///g' | sed '/^\.$/d' | xargs ls -d1"
alias lshd="find -L -maxdepth 1 -type d -name '.*' | sed 's/^.\///g' | sed '/^\.$/d' | xargs ls -d1"
#alias lshf="find -L -maxdepth 1 -type f -name '.*' | sed 's/^.\///g' | sed '/^\.$/d' | xargs ls -d1"
alias lshf="find -L -maxdepth 1 -not -type d -name '.*' | sed 's/^\.\///g' | xargs ls -d1"
# all _not_ hidden
alias lshn="find -L -maxdepth 1 | sed '/^\.$/d' | sed '/^\.\/\./d' | sed 's/^\.\///' | xargs ls -d1"

alias lsd="find -L -maxdepth 1 -type d | sed '/^\.$/d' | sed 's/^\.\///' | xargs ls -d1"
alias lsf="find -L -maxdepth 1 -not -type d | sed 's/^\.\///g' | xargs ls -1"

# to pipe into this use "-" as arg, i.e. $ <cmd> | vless -
# for syntax may have to do something like :set syn=sh
#alias vless='vim "+set ic" -u /usr/share/vim/vim90/macros/less.vim'
alias vless='/opt/homebrew/Cellar/neovim/0.9.4/share/nvim/runtime/macros/less.sh'


alias resetcolors='echo -e "\E[0m"'

# git
alias gitdf='git --git-dir=$HOME/.gitdf'
alias gitstatus='git status -sb'
alias gitlog='git log --all --oneline --graph'
alias gitlogc='git log --pretty=format:%h'
alias gitlogcc='git log --pretty=format:%H'
alias gitlog1="gitlog -1"

# keys
alias bindlistbase='bind -p | grep -v -e self-insert -e do-lowercase-version -e vi- -e digit-argument'
alias bindlist='bindlistbase | grep -v ^#'
alias bindlistt='bindlistbase | grep ^#'

# other
alias echopath='echo $PATH | tr : "\n"'
alias nvi='nvim'
alias vim='nvim'
alias vi='nvim'


alias vimdiff='nvim -d'
alias tree0='tree -L 1'
alias tree1='tree -L 2'

alias batp='bat --style=plain'
alias batpp='bat --paging=never'
alias batppp='bat --style=plain --paging=never'
alias pat='bat'
alias jat='bat'
alias batt='batp'
alias battt='batpp'
alias batttt='batppp'


