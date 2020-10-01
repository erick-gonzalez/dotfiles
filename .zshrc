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
export TERM=rxvt-unicode-256color
export FZF_DEFAULT_COMMAND='rg --files --hidden'

# Spaceship Prompt
export SPACESHIP_PROMPT_ADD_NEWLINE=false
export SPACESHIP_DIR_COLOR=red
export SPACESHIP_PROMPT_SEPARATE_LINE=false

# Pyenv
eval "$(pyenv init -)"
export PATH="$HOME/.pyenv/bin:$PATH"

# Git
alias git="git --no-pager"

# C++
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

tmux

