#!/bin/bash

# This script removes files ending with # or ~ in their names from current
# directory where it is run

vfiles=$(ls -a | sed -En '/[~#]$/p')
vfound=$(ls -a | sed -En '/[~#]$/p' | wc -l)

#if no matching file is found
if [ $vfound -eq 0 ]; then
    echo "No files terminating with '~' or '#' in directory"
    echo "exiting..."
    sleep 1
else
    # confirm delete intention
    echo -e "\nFound $vfound files terminating with '~' or '#'"
    read -n1 -p "PROCEED TO DELETE THEM ALL? (y/n): " vans
    if [ $vans == 'y' ]; then
	echo $'\n'"DELETING FILES.."
	sleep 1
	for vfile in $vfiles; do
	    rm $vfile
	done
	echo "DELETE COMPLETE"
	sleep 1
	echo "exiting..."
    elif [ $vans == 'n' ]; then
    echo -e "\nNoted. Aborting delete..."
    sleep 1
    else
	echo "Unknown response"
	exit 1
    fi
fi

