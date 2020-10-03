export ZSH="/home/erick/.oh-my-zsh"

ZSH_THEME="spaceship"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git 
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export PATH="$MY_INSTALL_DIR:$PATH"
export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# Spaceship Prompt
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_PROMPT_SEPARATE_LINE=false

SPACESHIP_PROMPT_ORDER=(
  user
  dir
  host
  git
)

# Pyenv
eval "$(pyenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"

# Git
alias git="git --no-pager"

# C++
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

tmux

