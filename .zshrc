# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python
export PATH=/Users/moowiz/gobin:$GAE_SDK/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH:$HOME/depot_tools

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

DEFAULT_USER="moowiz"

# Example aliases
alias zshconfig="vim ~/.zshrc"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=5

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx rails ruby gitfast brew bower fasd svn virtualenv virtualenvwrapper)

autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

setopt nolistambiguous

bindkey -v

GAEVERSION=1.9.7
export GAE_SDK=/usr/local/Cellar/google-app-engine/$GAEVERSION
export PYTHONPATH=$PYTHONPATH:$GAE_SDK/bin:$GAE_SDK/share/google-app-engine/lib/:$GAE_SDK/share/google-app-engine/

export APPLICATION_ID="ucb-codereview"
export DJANGO_SETTINGS_MODULE="settings"

export GOPATH=$HOME/go

export EDITOR='vim'

export DJANGO_SETTINGS_MODULE='settings'
alias master='ssh cs61a@hive5.cs.berkeley.edu'
alias ta='ssh cs61a-ty@star.cs.berkeley.edu'
alias c61='ssh cs161-ac@hive10.cs.berkeley.edu'
alias c62='ssh cs162-du@hive14.cs.berkeley.edu'
alias ssh-vm='ssh saasbook@127.0.0.1 -p 2222'
alias ssh-unix='ssh cs9e-1dk@star.cs.berkeley.edu'
alias gad='git add'

j () {
    cd `fasd -d $1`
}
