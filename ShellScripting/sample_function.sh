#! /bin/bash

# Normal declaration
function hello () {
  echo "Hello folks!"
}

# Call the function
hello

# Simple declaration
now () {
  echo "It's $(date +%r)"
}

# Call it
now

function  hello_compound () {
  echo "Hello $1!"
}

hello_compound "Niara"

function  hello_multiple () {
  for NAME in $@
  do
    echo "Hello $NAME"
  done
}

hello_multiple Kitty Rory Niara

echo "Scope ______________________________________________________________"

a_function() {
  GLOBAL_VAR=1
  local LOCAL_VAR="UnaLocal"
}
# Shouldn't be available
echo $GLOBAL_VAR "<- Not"

#It's now available
a_function
echo $GLOBAL_VAR
echo $LOCAL_VAR "<- Not"
