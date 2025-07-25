#!/usr/bin/env bash

set -euo pipefail

echo "Installing dotfiles"

git config --global alias.st status
git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.undo 'reset --soft HEAD~1'
git config --global alias.br 'branch -v'

cat >>~/.zshrc <<__EOF__
alias ll='ls -alh'
alias ..="cd .."
alias k="kubectl"

export EDITOR="code --wait"
__EOF__

cat >>~/.bashrc <<__EOF__

alias ll='ls -alh'
alias ..="cd .."
alias k="kubectl"

export EDITOR="code --wait"

export PS1="\[\033[01;32m\]\$\[\033[00m\] "
__EOF__
