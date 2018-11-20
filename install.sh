#!/usr/bin/env bash

cp dotfiles/.bash_profile ~/
cp dotfiles/.bashrc ~/
cp dotfiles/.gitconfig ~/
cp dotfiles/.inputrc ~/
cp dotfiles/.screenrc ~/
cp dotfiles/.vimrc ~/

if test ! $(which brew)
then
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle -v

mkdir -p $HOME/.ssh
curl https://api.github.com/users/andersonshatch/keys | jq -r .[].key > $HOME/.ssh/authorized_keys
./changeshell.sh

sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist

./defaults.sh
