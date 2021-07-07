#!/bin/bash
# menu interface to simple commands

echo -e "\n COMMAND MENU\n"
echo " a. Current date and time"
echo " b. Users currently logged in"
echo " c. Name of the working directory"
echo -e " d. Contents of the working directory\n"

read -p "Enter a, b, c, or d: " answer

if [ "$answer" == "a"];

then

      echo "date"

elseif [ "$answer" == "b"];

then

      echo "who"

elseif [ "$answer" == "c"];

then

      echo "pwd"

else [ "$ch" == "d"];

then

      echo "ls"

fi