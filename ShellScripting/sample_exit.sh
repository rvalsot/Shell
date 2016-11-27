#! /bin/bash

HOST="google.com"
ping -c 1 $HOST

if [ "$?" -eq 0 ]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable"
fi

 # Part 2: hosting result in a variable
echo
echo "2)--------------------------------------------------"

HOST2="instagram.com/"

ping -c 1 $HOST2
RETURN_CODE=$?

if [ "$RETURN_CODE" -ne "0" ]
then
  echo "$HOST2 unreachable."
fi

# Part 3: using ||:
echo
echo "3)--------------------------------------------------"

HOST3="facebook.com"
ping -c 1 $HOST3 || echo "$HOST3 not reachable"

# Part 4: with exit statuses defined
echo
echo "4)--------------------------------------------------"

HOST4="youtube.com"
ping -c 1 $HOST4
if [ "$?" -ne "0" ]
then
  echo "$HOST4 unreachable"
  exit 1
fi
exit 0
