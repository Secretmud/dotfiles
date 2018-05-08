#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\033[1;36m\]\t \033[00m\]\033[01;32m\] \u \033[00m\]@ \033[01;35m\]\W\033[00m\] >'
TERM='rxvt-unicode'
COLORTERM='rxvt-unicode-256color'


#Making life easier
alias ra="ranger"
alias spi="sudo pacman -S"
alias sps="sudo pacman -Ss"
alias syu="sudo pacman -Syu"
alias sc="sudo pacman -Sc"

#Network shit
alias n5="dhcpcd enp5s0"
alias n6="dhcpcd enp6s0"
alias vpn-de-start="sudo systemctl start openvpn-client@protonvpn.service"
alias vpn-de-stop="sudo systemctl stop openvpn-client@protonvpn.service"
alias vpn-jp-start="sudo systemctl start openvpn-client@protonvpn-jp.service"
alias vpn-jp-stop="sudo systemctl stop openvpn-client@protonvpn-jp.service"

#script
export PATH=$PATH:~/Documents/Scripts/
