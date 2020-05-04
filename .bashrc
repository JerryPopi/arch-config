#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias discordh='sudo -H discord --no-sandbox'
alias transp='transset-df'
alias clk='tty-clock -C 5 -r -s -D -S -d 0 -a 100000000'
