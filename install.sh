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
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

/opt/homebrew/bin/brew bundle -v

mkdir -p $HOME/.ssh
curl https://github.com/andersonshatch.keys > $HOME/.ssh/authorized_keys
./changeshell.sh

./defaults.sh
