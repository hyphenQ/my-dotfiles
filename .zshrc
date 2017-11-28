#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.config/zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.config/zprezto/init.zsh"
fi

# Customize to your needs...
source ~/.config/zprezto/setopt.zsh
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
