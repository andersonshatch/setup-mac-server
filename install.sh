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
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew bundle -v

mkdir -p $HOME/.ssh
curl https://github.com/andersonshatch.keys > $HOME/.ssh/authorized_keys
./changeshell.sh

./defaults.sh
