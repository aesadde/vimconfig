#!/bin/bash

<<REFERENCE
	This small script is intended just
	to create the correct links to get a vim configuration
	running quickly
    And download all info from submodules
REFERENCE
echo "This will updated all submodules and set the vimrc correctly"


    echo "initialising all submodules"
    git submodule init
    git submodule update
    echo "Create symbolic link to the actual vimrc inside .vim"
    echo $PWD
    echo $HOME
    ln -s $PWD/vimrc $HOME/.vimrc  

<<<<<<< HEAD

    #adding Cuda to tagbar
    echo 'adding cuda support to tagbar manually'



=======
    echo "installing some extra stuff"
    ./bundle/vim-YouCompleteMe/install.sh
>>>>>>> 2b2759866b51fbda4d851e076ada09bed80d4484
