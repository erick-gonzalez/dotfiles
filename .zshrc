export ZSH="/home/erick/.oh-my-zsh"

export ZSH_THEME="spaceship"
export COMPLETION_WAITING_DOTS="true"

# Go
export PATH=$PATH:/usr/local/go/bin

plugins=(
  git 
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'
export PATH=$MY_INSTALL_DIR:$PATH
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

# C++
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi

tmux
