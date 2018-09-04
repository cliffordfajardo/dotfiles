#!/usr/bin/env bash

#!/bin/zsh
# Path to your oh-my-zsh installation.
export ZSH=/Users/$USER/.oh-my-zsh

# Set name of the theme to load. Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"


# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"


# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"



# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages npm gulp grunt z httpie zsh-completions zsh-syntax-highlighting)

# User configuration

# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin" <----This doesn't work..update dotfiles.
export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"



source "$ZSH/oh-my-zsh.sh"


# You may need to manually set your language environment
 export LANG=en_US.UTF-8


# START of ALIASES --------------------------------------------------
alias zshconfig="code ~/.zshrc"

# Git Aliases
alias gadd="git add"
alias gch="git checkout"
alias gclone="git clone"
alias gcommit="git commit"
alias gpull="git pull"
alias gs="git status"
alias gstash="git stash"
alias gremote="git remote -v"
alias cat="bat"
alias preview="fzf --preview 'bat --color \"always\" {}'"
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'" # https://remysharp.com/2018/08/23/cli-improved
alias top="htop" # alias top and fix high sierra bug


# End of ALIASES --------------------------------------------------

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
