source $HOME/.vim/.local_stuff

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
if [ -e "/usr/local/bin/python" ]
then
  VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python"
else
  VIRTUALENVWRAPPER_PYTHON="/usr/bin/python"
fi

export WORKON_HOME=$HOME/.virtualenvs
export PATH=/Users/moowiz/gobin:$GAE_SDK/bin:/usr/local/share/npm/bin:$PATH:$HOME/depot_tools

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="seeker"

DEFAULT_USER="moowiz"

# Example aliases
alias zshconfig="vim ~/.zshrc"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx rails gitfast brew bower fasd virtualenv virtualenvwrapper)

autoload -U compinit && compinit -u

source $ZSH/oh-my-zsh.sh

setopt nolistambiguous

bindkey -v

GAEVERSION=1.9.7
export GAE_SDK=$(brew --prefix)/Cellar/google-app-engine/$GAEVERSION
export PYTHONPATH=$PYTHONPATH:$GAE_SDK/bin:$GAE_SDK/share/google-app-engine/lib/:$GAE_SDK/share/google-app-engine/

export APPLICATION_ID="ucb-codereview"
export DJANGO_SETTINGS_MODULE="settings"

export GOPATH=$HOME/go

export EDITOR='vim'

export DJANGO_SETTINGS_MODULE='settings'
alias master='ssh cs61a@hive5.cs.berkeley.edu'
alias ta='ssh cs61a-ty@star.cs.berkeley.edu'
alias gad='git add'

j () {
    cd `fasd -d $1`
}
