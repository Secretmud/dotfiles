#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
#PS1='\u@\h \W >'
TERM='rxvt-unicode'
COLORTERM='rxvt-unicode-256color'
export PS1="\[\e[32m\]\u \[\e[m\]\[\e[33m\]@ \[\e[m\]\[\e[36m\]\h \[\e[m\]\[\e[33m\]\W \[\e[m\]\[\e[31m\]\`parse_git_branch\`\[\e[m\] >"

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

#Flatpak
alias spotify="flatpak run com.spotify.Client"

#script
export PATH=$PATH:~/Scripts/tools/
export PATH=$PATH:~/.scripts
export PATH=$PATH:~/Programs/intelFPGA_lite/18.1/quartus/bin/
export PATH=$PATH:~/Programs/bin/
export PATH=$PATH:~/Programs/flutter/bin
export PATH=$PATH:~/.gem/ruby/2.6.0/bin
export PATH=$PATH:~/Programs/emmc/emsdk/emsdk_env.sh
export PATH=$PATH:~/.local/bin

export QSYS_ROOTDIR="/home/secret/Programs/intelFPGA_lite/18.1/quartus/sopc_builder/bin"
export QSYS_ROOTDIR="/home/secret/Programs/flutter/bin"
export TERM=xterm-256color


# get current branch in git repo
function parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}
export PATH=$PATH:/home/secret/.gem/ruby/2.7.0/bin:~/.scripts
