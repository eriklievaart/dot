#!/bin/sh
set -e

if [ ! -f ~/.vimrc ]; then
	cp $PWD/.vimrc ~/.vimrc
fi

if [ ! -f ~/.bash_aliases ]; then
	cp $PWD/.bash_aliases ~/.bash_aliases
fi

if [ grep -q HISTSIZE ~/.bashrc ]; then
	sed -i 's/HISTSIZE=.*/HISTSIZE=10000/'
else
	echo 'HISTSIZE=10000' >> ~/.bashrc
fi

if [ grep -q HISTFILESIZE ~/.bashrc ]; then
	sed -i 's/HISTFILESIZE=.*/HISTFILESIZE=20000/'
else
	echo 'HISTFILESIZE=10000' >> ~/.bashrc
fi

sudo apt remove vi
sudo apt install screen tre vim

sudo rm /bin/vi
sudo ln -s /bin/vim /bin/vi




