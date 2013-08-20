#!/bin/bash

<<REFERENCE
	This small script is intended just
	to create the correct links to get a vim configuration
	running quickly
REFERENCE
echo "This will updated all submodules and set the vimrc correctly"


    echo "initialising all submodules"
    git submodule init
    git submodule update
    echo "Create symbolic link to the actual vimrc inside .vim"
    echo $PWD
    echo $HOME
    ln -s $PWD/vimrc $HOME/.vimrc  
