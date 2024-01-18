# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
plugins=(python history history-substring-search mvn rsync git cp symfony2 sudo)
elif [[ "$unamestr" == 'Darwin' ]]; then
export PATH="/usr/local/sbin:/usr/local/bin:/opt/homebrew/bin:/usr/local/apache-maven/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:$HOME/.symfony/bin:$HOME/Library/Python/3.8/bin:$HOME/go/bin:/usr/local/texlive/2023/bin/universal-darwin"
plugins=(python history z docker brew history-substring-search mvn rsync git git-flow cp sudo macos zsh-iterm-touchbar battery kubectl virtualenv virtualenvwrapper poetry)
export HOMEBREW_NO_ANALYTICS=1
fi
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
if [[ $EUID == 0 ]]; then
	ZSH_HIGHLIGHT_STYLES[alias]='fg=red,bold'
	ZSH_HIGHLIGHT_STYLES[builtin]='fg=red,bold'
	ZSH_HIGHLIGHT_STYLES[function]='fg=red,bold'
	ZSH_HIGHLIGHT_STYLES[command]='fg=red'
else
fi

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8
export EDITOR=/usr/bin/vim

# History management
HISTSIZE=1000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS

# Aliases
if [[ -e $HOME/.aliases ]]; then
    source $HOME/.aliases
fi

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Sentry
if [[ -e $HOME/.sentry-cli ]]; then
    source $HOME/.sentry-cli
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.poetry/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Spaceship
if [[ -e $HOME/.zsh/spaceshiprc ]]; then
    source $HOME/.zsh/spaceshiprc
fi

# renew SSH key
if [[ -e $HOME/.zsh/renew_key ]]; then
    source $HOME/.zsh/renew_key
fi
