export NVM_DIR=~/.nvm

source $(brew --prefix nvm)/nvm.sh

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\e[1m\e[32m\u@\h\e[0m\e[0m:\e[1m\e[34m\w\e[0m\e[1;33m\$(git_branch)\e[0m\$ "


# aliases for directory traversal
alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

alias gs="git status"
alias gf="git fetch"
alias ga="git add"
alias gb="git branch"
alias gc="git commit"
alias gct="git checkout"
alias gd="git diff"

alias php7="brew unlink php@8.0 php@8.1 php@8.2  && brew link php@7.4"
alias php8="brew unlink php@8.1 php@7.4 php@8.2  && brew link php@8.0"
alias php81="brew unlink php@8.0 php@7.4 php@8.2  && brew link php@8.1"
alias php82="brew unlink php@8.0 php@8.1 php@7.4 && brew link php@8.2"