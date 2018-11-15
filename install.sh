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

./changeshell.sh
