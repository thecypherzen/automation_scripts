#!/bin/bash
vfiles=$@
veditor=$EDITOR
vnof=$#

#functions
fmakec()
{
    for file in $vfiles;  do
	touch $file
	echo -e "#include <stdio.h>\n
/**
 * main - Entry point
 *
 * Description goes here
 *
 * Return: 0 always
 */
int main(void)
{return (0);
}" > $file
    done
    if [[ $vnof -eq 1 ]]; then
	echo "1 C file created."
    else
	echo "$vnof C files created."
    fi
}

fopenc()
{
}

#Check if file name is provided.
#If at least one file is provided, create it with shebang and set x permission.
#If no default editor, prompt user to set

if [[ ! $1 ]]; then
    echo "Sorry, at least 1 filename needed. Try again."
else
    fmakec
    sleep .5
    if [ ! $veditor ]; then
	read -p "Set your default editor: " EDITOR
	export EDITOR
	veditor=$EDITOR
    fi
        $veditor $1
fi
