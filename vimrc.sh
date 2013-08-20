#!/bin/bash

<<REFERENCE
	This small script is intended just
	to create the correct links to get a vim configuration
	running quickly
REFERENCE


echo "Move to home directory"
cd $HOME

echo "Create symbolic link to the actual vimrc inside .vim"
ln -s $PWD/vimrc $HOME/.vimrc  
