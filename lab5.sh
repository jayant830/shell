#!bin/bash

#let the user knnow that this is the address book
echo --Address Book--

#select is used to create a menu efficiently and allows the user to choose an option that is presented before them. 
select user_choice in List/Search, Add, Edit, Remove, Quit

#Ask the user to select between 5 different options to act on the address book.

do
echo "Here is your output, ${user_choice}"
done

