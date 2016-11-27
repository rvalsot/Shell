#! /bin/bash

MY_SHELL="cat"

if [ $MY_SHELL = "dog" ]
then
  echo "This is a dog"
elif [ $MY_SHELL = "cat" ]
then
  echo "It's a cat"
else
  echo "Nope, neither a cat or a dog"
fi
