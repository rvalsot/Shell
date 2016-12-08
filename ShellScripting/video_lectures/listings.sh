#!/bin/bash

echo "This will print several stuff ---------------------------------"

echo "ls *.sh -----------------------------------"
ls *.sh

echo "ls a* -------------------------------------"
ls a*

echo "ls a*t ------------------------------------"
ls a*t

echo "ls ? --------------------------------------"
ls ?

echo "ls c[aeoiu]t ------------------------------"
ls c[aeiou]t

echo "------------------------------------------"
echo "For loop to echo all the .sh files in the directory"
for FILE in *.sh
do
  echo "File: $FILE"
done
