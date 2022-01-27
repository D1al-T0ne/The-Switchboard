#!/bin/bash

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Listing files and directories
alias ls="ls -G"
alias lsf="ls -Gp | grep -v /"
alias lsd="ls -Gd -- */"

# Shortcuts
alias doc="cd ~/Documents"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"

# Grep History
alias gh='history|grep'

# AFK
alias afk='pmset displaysleepnow'

#VPN 
alias con='curl ifconfig.me'
alias vpn-con='piactl background enable && piactl connect'
alias vpn-dis='piactl disconnect'
alias vpn-id='piactl get vpnip'
alias vpn-montreal='piactl set region ca-montreal'
alias vpn-toronto='piactl set region ca-toronto'
alias vpn-vancouver='piactl set region ca-vancouver'
alias vpn-new-york='piactl set region us-new-york'
alias vpn-chicago='piactl set region us-chicago'
alias vpn-florida='piactl set region us-florida'
alias vpn-washington='piactl set region us-washington-dc'
alias vpn-mexico='piactl set region mexico'
alias vpn-bahamas='piactl set region bahamas'
alias vpn-greenland='piactl set region greenland'
alias vpn-panama='piactl set region panama'
alias vpn-venezuela='piactl set region venezuela'
