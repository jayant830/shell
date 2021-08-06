#!bin/bash

function makepath2()
{
wd=$(pwd)
pathname=$1
echo $pathname
while [[ $pathname = */* && ${#pathname} > 0 ]]
do
if [[ ! -d "${pathname%%/*}" ]]
then
mkdir "${pathname%%/*}"
fi
cd "${pathname%%/*}"
pathname="${pathname#*/}"
done
if [[ ! -d $pathname && ${#pathname} > 0 ]]
then
mkdir $pathname
fi
cd $wd
}
makepath2