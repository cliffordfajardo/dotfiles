[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export NODE_PATH=$NODE_PATH:`npm root -g`


# Git Aliases
alias gadd="git add"
alias gch="git checkout"

alias gcommit="git commit"
alias gpull="git pull"
alias gs="git status"
alias cat="bat"
alias fzfpreview="fzf --preview 'bat --color \"always\" {}'"
alias fzfhistory="fzf-history-widget" # Blazing fast fuzzy search history of commands I've entered in terminal.
# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'" # https://remysharp.com/2018/08/23/cli-improved
alias top="htop" # alias top and fix high sierra bug
