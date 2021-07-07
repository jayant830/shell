#!bin/bash

echo --Address Book--
echo 1. List/Search
echo 2. Add
echo 3. Edit
echo 4. Remove
echo 5. Quit


echo Enter your selection:
read user_choice

choice[1]="List/Search"
choice[2]="Add"
choice[3]="Edit"
choice[4]="Remove"
choice[5]="Quit"

echo "Here is your output, ${choice[user_choice]}"

echo "This is a change"