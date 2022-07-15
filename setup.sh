#!/bin/bash

printf "Setup of the user, with git\nFirstly let us setup git on this computer\n\n"

gituser=""
gitmail=""
# This will be used later, not important right now.
gitpass=""

if [[ ! -f $HOME/.gitconfig ]]
then
	printf "\nUsername:\t"
	read gituser
	printf "\nEmail:\t"
	read gitmail
	printf "\nPassword:\t"
	read -s gitpass

	echo "\n $gituser $gitmail $gitpass"

	git config --global user.name $gituser 
	git config --global user.email $gitmail
else
	printf ".gitconfig is already configured\n"
    gituser=$(git config user.name)
fi

# Create the directories I mostly use
directories=("Documents" "Downloads" "Git" "Picutres" "Videos" "Music")

for i in ${directories[@]};
do
	if [[ ! -d $HOME/$i ]]
	then
		mkdir $HOME/$i
	else
		printf "$HOME/$i already exists.\n"
	fi
done

# Fetch github repositories using the github api. 
gh=$(curl -s https://api.github.com/users/$gituser/repos | jq -r '.[].html_url')
cd ~/Git

for i in ${gh[@]};
do
	IFS="/" read -r -a x <<< $i
	if  [[ ! -d ${x[4]} ]]
	then
		git clone $i.git -q
	else 
		printf "${x[4]} is already cloned, trying to update...\n"
		cd ${x[4]}
		git pull -q
        cd ..
	fi
done

cd dotfiles

printf "$(pwd) setting up symlinks from this directory\n"

ln -sf $(pwd)/.bashrc $HOME/.bashrc
ln -sf $(pwd)/.vimrc $HOME/.vimrc
ln -sf $(pwd)/.emacs $HOME/.emacs
ln -sf $(pwd)/config $HOME/.config/i3/config
ln -sf $(pwd)/.i3blocks.conf $HOME/.i3blocks.conf

