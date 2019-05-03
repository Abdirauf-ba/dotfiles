#                                                          
#     ?                    ?                   
#                                                          
#     █                    █                   
#     █                    █                   
#     █                    █                   
#     █▓██   ░███░  ▒███▒  █▒██▒   █▒██▒  ▓██▒ 
#     █▓ ▓█  █▒ ▒█  █▒ ░█  █▓ ▒█   ██  █ ▓█  ▓ 
#     █   █      █  █▒░    █   █   █     █░    
#     █   █  ▒████  ░███▒  █   █   █     █     
#     █   █  █▒  █     ▒█  █   █   █     █░    
#     █▓ ▓█  █░ ▓█  █░ ▒█  █   █   █     ▓█  ▓ 
#     █▓██   ▒██▒█  ▒███▒  █   █   █      ▓██▒ 
#                                                                                               

#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias pastebin='nc termbin.com 9999'
alias ls='ls --color=auto'


BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"


#--------------------------------------------------------------------------------------------------
                                        PROMPT
#--------------------------------------------------------------------------------------------------
#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1m\][\u@\h \W]\$\[\e[0m\] '
#PS1='\[\e[0;31m\]??\e[0m\e[34m[\[\e[0m\e[0;32m\] \w\[\e[0m\] \e[34m]\e[0m $(__git_ps1 "\[\e[0;35m\]@\[\e[0m\]\[\e[0;36m\]\[\e[5m \]%s\[\e[25m\]\[\e[0m\]")\n??>\[\e[0m\] '
#PS1='\[\e[0;31m\]?????? \[\e[0;32m\]\W\[\e[0m\] $(__git_ps1 "\[\e[0;33m\]at\[\e[0m\] \[\e[0;34m\]%s\[\e[0m\]") '
#PS1='\[\e[0;31m\]$ \[\e[0;32m\]\W\[\e[0m\] $(__git_ps1 "\[\e[1;37m\]@\[\e[0m\] \[\e[0;36m\]%s\[\e[0m\]") '
#PS1='\[\e[1;91m\][\u@\h \w]\$\[\e[0m\] '
# color names for readibility
reset=$(tput sgr0)
bold=$(tput bold)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
user_color=$green
[ "$UID" -eq 0 ] && { user_color=$red; }
PS1="\[$reset\][\[$cyan\]\A\[$reset\]]\[$user_color\]\u@\h(\l)\
\[$white\]:\[$red\]\W\[$reset\][\[$yellow\]\$?\[$reset\]]\[$white\]\
\\$\[$reset\] "

