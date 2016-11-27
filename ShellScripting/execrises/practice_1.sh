#! /bin/bash

# Exercise 1:
echo "1)"
echo "Shell scripting is fun!"
echo

# Exercise 2:
echo "2)"
MESSAGE="Shell scripting is fun, version 2"
echo $MESSAGE
echo

# Exercise 3:
echo "3)"
HOSTNAME=$(hostname)
echo "The hostname is:" $HOSTNAME
echo


# Exercise 4:
echo "4)"

[ -e "/etc/shadow" ]
  echo "Shadows are growing"

if [ -w "./cow" ]
then
  echo "You can cow"
else
  echo "You cannot cow"
fi

echo

# Exercise 5

echo "5)"
echo

# Exercise 6

echo "6)"
read -p "Looking for file: " USER_FILE_NAME

echo

# Exercise 7

echo "7)"

echo

# Exercise 8

echo "8)"
echo
