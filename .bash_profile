[ -f ~/.fzf.bash ] && source ~/.fzf.bash # Comment out to disable fzf

# *****************************************************************************
# Bash
# *****************************************************************************
# Examplanation: https://superuser.com/a/435127/402911
bind "set completion-ignore-case on" # Allow completion with case ignored....now I have what I missed most from ZSH.
bind "set show-all-if-ambiguous on"  # This makes it unnecessary to press Tab twice when there is more than one match. About to save thousands of extra unneeded keystrokes!

# Custom shell prompt. Show my current branch if I'm in a git repo. Inspiried by: https://dev.to/awwsmm/create-a-dynamic-prompt-string-in-bash-3617
export PS1="\n\${PWD##*/}\$(git status 2>/dev/null | grep 'On branch' | sed 's/On branch / => /') $ "

# Shoutouts: https://kevinjalbert.com/more-shell-history/ && https://www.shellhacks.com/tune-command-line-history-bash/
export HISTSIZE=100000            # the number of commands to remember in the command
export HISTFILESIZE=100000        # the maximum number of lines contained in the history
# export HISTCONTROL=ignoredups     # Don't show repeats
# export HISTIGNORE="ls:ps:history" # Don’t save ls, ps and history commands:
# TODO: uncomment 2 lines above in 3 months to get a feel for which commands I use the most...I'll grep and count the occurrences with `wc` later..


alias reload="source ~/.bash_profile && source ~/.bashrc && echo 'Current shell session has been reloaded (sourced).'"




# *****************************************************************************
# Aliases
# *****************************************************************************
#**************************** misc ****************************
alias inbox="vim ~/inbox.txt"
alias coding=" mkdir -p ~/coding && cd ~/coding"
alias analyzedisk="ncdu --color dark -rr -x --exclude .git --exclude node_modules" #https://remysharp.com/2018/08/23/cli-improved


#**************************** fzf related ****************************
alias preview="fzf --preview 'bat --style=numbers --color=always {}'"   # preview files interactivly. The results show every file from the current directory downward, recursively.
alias fzfhistory="__fzf_history__"                                      # We don't want to use regular history (history | fzf) because it will include the history number.


#**************************** git related ****************************
alias gs="git status"


#**************************** nano ****************************
alias inbox="vim ~/inbox.md" # quick botes to revisit later & avoid context switches
alias coding="cd ~/coding" # all code lives here. Makes searching & finding things easier.


#**************************** builtin commands related ****************************
# Shoutout : https://remysharp.com/2018/08/23/cli-improved
alias fd="fdind"  # in some package managers on linux, fd was taken dev had to name it fdind
alias cat="bat"   #
alias top="htop"  # alias top and fix high sierra bug
