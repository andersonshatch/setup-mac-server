#!/usr/bin/env bash

cp .bash_profile ~/
cp .bashrc ~/
cp .gitconfig ~/
cp .inputrc ~/
cp .screenrc ~/
cp .vimrc ~/

if test ! $(which brew)
then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle -v

mkdir -p $HOME/.ssh
curl https://api.github.com/users/andersonshatch/keys | jq -r .[].key > $HOME/.ssh/authorized_keys
./changeshell.sh

sudo launchtl load /System/Library/LaunchDaemons/ssh.plist
