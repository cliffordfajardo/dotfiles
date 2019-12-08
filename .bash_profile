[ -f ~/.fzf.bash ] && source ~/.fzf.bash # comment this if you want to disable fzf

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





# *****************************************************************************
# Aliases
# *****************************************************************************
#**************************** fzf related ****************************
alias preview="fzf --preview 'bat --style=numbers --color=always {}'"   # preview files interactivly. The results show every file from the current directory downward, recursively.
alias fzfhistory="history | fzf"                                        # We don't want to use regular history because it will include the history number. 

#**************************** git related ****************************
alias gs="git status"


#**************************** builtin commands related ****************************
# Shoutout to Remy: https://remysharp.com/2018/08/23/cli-improved
alias ls="exa"    #
alias cat="bat"   #
alias top="htop"  # alias top and fix high sierra bug
