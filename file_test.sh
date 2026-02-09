#!/bin/bash

echo "Enter the file name:"
read file_name

if [ -f "$file_name" ]
then
  if [ -w "$file_name" ]
  then
    echo "Type something (ctrl+D to quit)"
    cat >> "$file_name"
   else
     echo "The file does not have write permission"
   fi
  else
    echo "$file_name does not exist"
  fi
