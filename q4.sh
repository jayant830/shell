#!bin/bash

$ cat listdirs
file "$@" |
grep directory |
sed 's/:.*//'