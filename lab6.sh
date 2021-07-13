#!bin/bash
BOOK="myAddrBook"
#let the user knnow that this is the address book
echo "--Address Book--"

#select is used to create a menu efficiently and allows the user to choose an option that is presented before them. 
echo "Asking the user to select an option"
select user_choice in List/Search Add Edit Remove Quit
#select user_choice in List/Search Add Edit Remove Quit

echo "If condition starts here"

do
echo "${user_choice}"
done