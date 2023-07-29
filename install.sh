#!/usr/bin/env bash

cp dotfiles/.bash_profile ~/
cp dotfiles/.bashrc ~/
cp dotfiles/.gitconfig ~/
cp dotfiles/.gitignore ~/
cp dotfiles/.inputrc ~/
cp dotfiles/.screenrc ~/
cp dotfiles/.vimrc ~/

if test ! $(which brew)
then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew bundle -v

mkdir -p $HOME/.ssh
curl https://github.com/andersonshatch.keys > $HOME/.ssh/authorized_keys
./changeshell.sh

sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.screensharing.plist

./defaults.sh
