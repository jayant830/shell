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

add_item () {
    echo "First Name: "  
    read fName 
    echo "Last Name: " 
    read lName
    echo "Address: "
    read addr
    echo "City: "
    read city
    echo "State: "
    read state
    echo "Zip: "
    read zip
    echo "Phone Number (xxx-xxx-xxxx): "
    read phnum
    echo "Email Address: "
    read emadd
    echo "Preferred Method of Contact: "
    read pmc

    echo "$fName:$lName:$addr:$city:$state:$zip:$phnum:$emadd:$pmc" | `tee -a  myAddrBook` 2> /dev/null
}

main () {
    echo "I am going to create an address book to add contacts"
    check_addrbook
    add_item
}

#select is used to create a menu efficiently and allows the user to choose an option that is presented before them. 
echo "Please select an option"
select user_choice in List/Search Add Edit Remove Quit

do
echo "Here is your output, ${user_choice}"

if [ ${user_choice} == "Add" ]; then
main
fi

#Ask the user to select between 5 different options to act on the address book.  a

done