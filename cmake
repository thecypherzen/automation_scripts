#!/bin/bash
files=$@
editor=$EDITOR
nof=$#

#Check if file name is provided.
#If at least one file is provided, create it with shebang and set x permission.
#If no default editor, prompt user to set

if [[ ! $1 ]]; then
    echo "Sorry, at least 1 filename needed. Try again."
    exit 1
else
    for file in $files;  do
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

    if [[ $nof -eq 1 ]]; then
	echo "1 C file created."
    else
	echo "$nof C files created."
    fi

    sleep .5

    if [ ! $editor ]; then
	read -p "Set your default editor: " EDITOR
	export EDITOR
	editor=$EDITOR
    fi
        $editor $1
fi
