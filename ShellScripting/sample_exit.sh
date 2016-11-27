#! /bin/bash

HOST="google.com"
ping -c 1 $HOST

if [ "$?" -eq 0 ]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable"
fi

 # Part 2

echo "2)--------------------------------------------------"

HOST2="instagram.com/"

ping -c 1 $HOST2
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then
  echo "$HOST2 unreachable."
fi
