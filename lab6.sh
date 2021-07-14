#!bin/bash
BOOK="myAddrBook"
#let the user knnow that this is the address book
echo "--Address Book--"

check_addrbook () {

if [ ! -f $BOOK ]; then
echo "Creating $BOOK..."
touch $BOOK
fi

if [ ! -f $BOOK ]; then
echo "Creating $BOOK ..."
touch $BOOK 
elif
[ ! -r $BOOK ]; then
echo "Error: $BOOK not readable"
exit 1
elif [ ! -w $BOOK ]; then
echo "Error: $BOOK not writeable"
exit 2
fi
} 

#select is used to create a menu efficiently and allows the user to choose an option that is presented before them. 
echo "Asking the user to select an option"
select user_choice in List/Search Add Edit Remove Quit

do
echo "Here is your output, ${user_choice}"


#Ask the user to select between 5 different options to act on the address book.  a


check_addrbook
done