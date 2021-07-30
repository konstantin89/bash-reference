#! /bin/bash

#------------------------------- Variables

MY_VAR="Hello World"
echo $MY_VAR
echo ${MY_VAR}ddd   # Note, this is example when to use {}

#------------------------------- If Else

MY_VAR="var"
if [ "$MY_VAR" = "var" ]
then
    echo "This is true"
elif [ "$MY_VAR" = "Silly value" ]
then
    echo "This will not be printed"
else
    echo "This will not be printed"
fi

if [ -f $0 ]
then
    echo "File $0 exists"
fi

#------------------------------- Loops

FILES=$(ls .)

for FILE_NAME in ${FILES}
do
    echo $FILE_NAME
done

#------------------------------- Positional params

echo "This is \$0: $0"
echo "This is \$1: $1"
echo "This is \$2: $2"

for PARAM in $@
do
    echo "This is param value: [ $PARAM ]"
done

#------------------------------- Exit codes

echo "The exit code of previous command is $?"

HOST="google.com"

ping -c 1 $HOST

if [ "$?" -eq "0" ]
then
  echo "$HOST reachable."
else
  echo "$HOST unreachable."
fi

#------------------------------- Functions

function hello_world() {
    echo "Hello World"

    return 0
}

hello_world

function hello_world_with_params() {
    echo "Hello World $1 $2 $3"
}

hello_world_with_params hi hey wow 

function local_var_func() {
    local MY_VAR="Hey there"
}

local_var_func

