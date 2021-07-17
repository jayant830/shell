#!bin/bash
BOOK="myAddrBook"
#let the user knnow that this is the address book
echo "--Address Book--"

check_addrbook () {


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

list () {
    if [ ! -f $BOOK ]; then
    echo "Address Book $BOOK does not exist. ..."
    echo "Please create one now." 
    else 
    cat myAddrBook
    fi
}

search () {
    echo "Who do you want to search for?"
    read search_string
    grep -i $search_string $BOOK
    if [ "$?" != "0" ]; then
    echo "Does not exist"
    echo "Do you want to add a new entry [y/n]?"
    read u_input
    if [ $u_input == "y" ]; then 
    add_item
    elif [ $u_input == "n" ]; then
    exit 0
    else 
    echo "invalid input"
    exit 1
    fi 
    else
    continue
    fi
}

add () {
    echo "I am going to create an address book to add contacts"
    check_addrbook
    add_item
}

del_item () {
    echo "Enter the first name of the contact you want to delete: "
    read u_input
    grep -i $u_input $BOOK
    if [ "$?" == "0" ]; then
    sed -i "/^$u_input/d" $BOOK
    echo "Deleted $u_input from your Address book"
    else
    echo "Contact $u_input does not exist. Cannot delete"
    continue
    fi
}
#select is used to create a menu efficiently and allows the user to choose an option that is presented before them. 
echo "Please select an option"
select user_choice in List Search Add Edit Remove Quit

do
#echo "Here is your output, ${user_choice}"

if [ ${user_choice} == "Add" ]; then
add
elif [ ${user_choice} == "List" ]; then
list
elif [ ${user_choice} == "Search" ]; then
search
elif [ ${user_choice} == "Remove" ]; then
del_item
elif [ ${user_choice} == "Quit" ]; then
exit 0
fi

#Ask the user to select between 5 different options to act on the address book.  a

done