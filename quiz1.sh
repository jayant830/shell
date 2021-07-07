#!/bin/bash
# menu interface to simple commands

echo -e "\n COMMAND MENU\n"
echo " a. Current date and time"
echo " b. Users currently logged in"
echo " c. Name of the working directory"
echo -e " d. Contents of the working directory\n"

read -p "Enter a, b, c, or d: " answer

if [ $answer == "a" ];

then
    echo `date`
elif [ $answer == "b" ];

then

    echo `who`
elif [ $answer == "c" ];

then

    echo `pwd`

else [ $answer == "d" ];  
    echo `ls`

fi
