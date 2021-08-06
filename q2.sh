#!bin/bash

$ cat a 
pid=$PPID
line=$(ps | grep $pid)
echo $line | cut --delimiter=" " --fields=4