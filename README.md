# bash-reference

## Command References

[sed](sed/README.md)

## Bash Quick Reference

---
### Shebang

Shebang is the '#!' in the beginning of the script.  
It is used to choose the interpreter that the script will use.  
If no shebang is specified, the current shell will be used.  

``` sh
#! /bin/bash
echo "This script is using the bash interpreter."
```

---
### Variables

To access variable's data use the $ operator.  
The {} is optional.  

``` sh
#! /bin/bash

MY_VAR="Hello World"
echo $MY_VAR
echo ${MY_VAR}ddd   # Note, this is example when to use {}
```

By default, all variables are global.  
The `local` key word can be used to make function variables local.  

---
### If Else statements

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

There are few `test` operators that bash provides.  
For example, the `-f` checks if file exists.  
``` sh
#! /bin/bash

if [ -f $0 ]
then
    echo "File $0 exists"
fi
```

---
### Loops

``` sh
#! /bin/bash

FILES=$(ls .)

for FILE_NAME in ${FILES}
do
    echo $FILE_NAME
done
```

---
### Positional Parameters

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

---
### Exit Code

``` sh
#! /bin/bash

echo "The exit code of previous command is $?"
```

The following script check is host is reachable:
``` sh
#! /bin/bash

HOST="google.com"

ping -c 1 $HOST

if [ "$?" -eq "0" ]
then
  echo "$HOST reachable."
else
  echo "$HOST unreachable."
fi

```

---
### Functions

Note that `return` can be used to return value from function.   
If no `return` is used, the return value is the return value of the  
last command in the function.

``` sh
#! /bin/bash

#Declare hello_world
function hello_world() {
    echo "Hello World"
    return 0
}

# Call hello_world
hello_world     

```

Functions can access their parameters via $1, $2, etc.  
Note that $0 is still the script name.  
``` sh
#! /bin/bash

function hello_world_with_params() {
    echo "Hello World $1 $2 $3"
}

hello_world_with_params hi hey wow 
```

Local variables can be declared using the `local` keyword.
``` sh
#! /bin/bash

function local_var_func() {
    local MY_VAR="Hey there"
}

local_var_func
```

---
### Wildcards

`*`  - Matches zero or more characters.   
`?`  - Matches exactly one character.    
`[]`    - Match one character from the characters in `[]`.  
`[!]`   - Match any character that is not in `[!]`.  
`[a-z]` - Match character that is in the range of characters.  


