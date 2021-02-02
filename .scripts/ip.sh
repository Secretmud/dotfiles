#!/bin/bash

if [[ ! -f ~/.scripts/ip.iter ]]
then
    echo 0 > ~/.scripts/ip.iter
    i=0
else
    i=$(cat ~/.scripts/ip.iter)
fi

if [[ $i -gt 2 ]]
then
    i=0
fi

ip=($(ip a | grep -Po [0-9]+.[0-9]+.[0-9]+.[0-9]+ | grep -v ":"))
typ=(Lo IP Brd)
echo "${typ[$i]} -> ${ip[$i]}"
((i++))
echo $i > ~/.scripts/ip.iter

