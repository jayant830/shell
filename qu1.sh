#!/bin/bash

doindent()
{
# Do a small indent depending on how deep into the tree we are
# Depending on your enviroment, you may need to use
# echo " \c" instead of
# echo -en " "
# j=0;
for (( j=0; j<=$1; j++ ))
do
echo -en " "
j=`expr $j + 1`
echo $j
done
}
doindent
#traverse()
##{
# Traverse a directory
#indent="$2"

#ls "$1" | for i in {0...$1};
#do
#doindent $2
#if [ -d "$1/$i" ]; then
#echo "Directory: $1/$i"
# Calling this as a subshell means that when the called
# function changes directory, it will not affect our
# current working directory
#traverse "$1/$i" `expr $2 + 1`
#else
#echo "File: $1/$i"
#fi
#done

#}

#if [ -z "$1" ]; then
#traverse . 0
#else
#traverse "$1" 0
#fi

