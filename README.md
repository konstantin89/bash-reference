# bash-reference

## Shebang

Shebang is the '#!' in the beginning of the script.  
It is used to choose the interpreter that the script will use.  
If no shebang is specified, the current shell will be used.  

``` sh
#! /bin/bash
echo "This script is using the bash interpreter."
```

## Variables

To access variable's data use the $ operator.  
The {} is optional.  

``` sh
#! /bin/bash

MY_VAR="Hello World"
echo $MY_VAR
echo ${MY_VAR}ddd   # Note, this is example when to use {}
```

## If Else statements

``` sh
#! /bin/bash

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
```

## Loops

``` sh
#! /bin/bash

FILES=$(ls .)

for FILE_NAME in ${FILES}
do
    echo $FILE_NAME
done
```

## Positional Parameters

Each command line param can be accessed with the `$` operator:
``` sh
#! /bin/bash

SCRIPT_COMMAND=$0

echo "This is \$0: $SCRIPT_COMMAND "
echo "This is \$1: $1"
echo "This is \$2: $2"
```

The `$@` variable contains list of all command line params (except for $0):
``` sh
#! /bin/bash

for PARAM in $@
do
    echo "This is param value: [ $PARAM ]"
done
```

