# Automation Scripts#

### Overview ###
As **ALXSE students** (or learning to code elsewhere), we find ourselves
repeating tasks like setting defining 'git config' values for each repo,
compiling C source code in certain ways, writing hashbangs for each script and
granting x permissions, and the likes.

I wrote these scripts to take the redundancy and unecessary iteration
off us, so we can focus on learning. Try them out.

### Technologies ###
. Scripts written in GNU bash, version 5.0.17(1)
. Tested on Ubuntu 20.04.6 LTS

### Files ###
| SN |	  Script	|	Description				       |
|----| -----------------| ---------------------------------------------------- |
| 1. |[bdel](https://)	| . Means backup-delete
			  . Searches for all emacs back up and recovery files,\
     			    terminating in # or ~.
			  . If found, user chooses to delete or cancel.
			  . **You extend the search by adding the regex for
			    other files you want to auto delete**
			  . Only searches the current directory, but can be
			    called from any location.
|----| -----------------| ---------------------------------------------------- |
| 2. | [compilec](https://)	| ####Overview####
       				 . Compiles C source code using the `gcc -Wall
       			    -pedantic -Werror -Wextra -std=gnu89` flags.
			  ####How it works####
			  . Takes in the c source code (compulsory) and the
			    object code filename (optional) as positional
			    arguments.
			  . If object code filenames omitted, the object is
			    is named the same as the c file, but with a .x
			    extension instead of .c or other.
			  ####Syntax####
			  `./compilec <source.c> <object_filename>`
			       - * **This calls the compilec script from home
			         directory, but it can be done from anywhere.** *
			       - **Currently * 'source.c' * can only come
			         from the working directory and 'output' can
				 only be written to the working directory.**
			       - Will update later to work with absolute
			         paths to files (if necessary).
|----|-------------------|---------------------------------------------------- |
| 3. | [gitconfig](https://)| . Sets `git config --global user.name ...` and
       			        `git config --global user.email ...` for working
				git repository.
			   . Before calling the script, open the **gitconfig**
			     script and replace default info with yours and save.
			   . You can update with other of your favorite settings.
