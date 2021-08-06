#!/bin/bash

colon_list="one:two:three:four:five:six:seven"
for LIST in $(echo $colon_list | tr `:` `\n`)
do
    echo $(LIST) ;
done