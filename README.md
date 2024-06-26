# Automation Scripts #

## Introduction ##
As **ALXSE students** (or learning to code elsewhere), we find ourselves
repeating tasks like setting defining 'git config' values for each repo,
compiling C source code in certain ways, writing hashbangs for each script and
granting x permissions, and the likes.

I wrote these scripts to take the redundancy and unecessary iteration
off us, so we can focus on learning. You should try them out.

## Key Takeaway ##
You would need to create an alias that points to the location of each script on your machine to make it more
useful. I'd recommend doing so in your `.bashrc` file.

## Technologies ##
- Scripts written in GNU bash, version 5.0.17(1)
- Tested on Ubuntu 20.04.6 LTS

## Files ##
| SN |	  Script	|	Description				       					|
|----| -----------------| -------------------------------------------------------------------			|
| 1. |[bdel](https://https://github.com/thecypherzen/automation_scripts/blob/main/bdel)	| <ul><li> Means backup-delete.<br><li>Searches for all emacs back up and recovery files, terminating in # or ~.<br><li>If found, user chooses to delete or cancel, else it exits.<br><li>***You can extend the search by adding the regex for other files you want to auto delete***.<br><li>Only searches and works with files in the current directory, but can be called from any location.</ul>								|
| 2. | [cmake](https://github.com/thecypherzen/automation_scripts/blob/main/cmake) |**Overview**<br><ul><li>Used to make c source code files that have the basic header `<stdio.h>`, basic **betty-style consistent comments** and the **main function**. Consider it like a boilerplate to save you some typing time.<br><li>Can make multiple or single files at a time.<br></ul>**How it works**<br><ul><li>Requires at least one *filename* to work at all.<br><li>For each filename entered, it generates *C boilerplate* to the respective files, and opens the first *file*.<br><li>If only one *filename* is entered, it does same for just that file.<br><li>Requires user to set a default editor for current terminal instance - if not defined.<br><li>Will update later to set default editor globally (if necessary).</ul>**Syntax**<br><ul><li>`./cmake file_1 file_2 ... file_n` *make multiple files in working directory and open file_1*<br><li>`~/cmake file_1` *called from **home dir** to **make 1 file** in working directory and open it.*</ul>
| 3. | [compilec](https://github.com/thecypherzen/automation_scripts/blob/main/compilec)	| **Overview**<br/><ul><li>Compiles C source code using the `gcc -Wall -pedantic -Werror -Wextra -std=gnu89` flags.</ul>**How it works**<br><ul><li>Takes in ***one c source file*** (compulsory) and ***one object  filename*** (optional) at at time, as positional arguments.<br><li>If **object filename** is omitted, the compiled file is named the same as the c file, but with a **.x extension** instead of **.c**.</ul>**Syntax**<br/>`./compilec <source.c> <object_filename>`<br/><ul><li>This calls the compilec script from home directory, but it can be done from anywhere.<li>Currently **source.c** can only come from the working directory and **object_file** can only be made in working directory.<li>Will update later to work with absolute paths to files (if necessary).</ul> 						|
| 4. | [gitconfig](https://github.com/thecypherzen/automation_scripts/blob/main/gitconfig)	| <ul><li>Sets `git config --global user.name "name"` and `git config --global user.email "email"` for working git repository.<li>Before calling the script, open the **gitconfig** script and replace default info with yours and save.<li>You can update with other of your favorite settings.</ul>									|
| 5. | [smake](https://github.com/thecypherzen/automation_scripts/blob/main/smake) | <ul><li>Makes **bash script** boilerplate with the shebang `#!/bin/bash` and sets **x** permission automatically.<li>Can make one or more scripts at a time.<li>Generally works like [cmake](https://github.com/thecypherzen/automation_scripts/blob/main/cmake).</ul> |
| 6. | [trash](https://github.com/thecypherzen/automation_scripts/blob/main/trash) | A script that implements a trash bin in user's home directory. </br>Usage: <ul><li>`trash <file_1> [<file_2> ...]` where the files or directories are the arguments passed to the script.</li><li>It creates a directory `~/.trash/` which is used as the bin.</li><li>Requires at least one argument. The default name can be changed from within the script.</li><li>Arguments can either be files or directories, *no strings attached*.</li><li>When moving files to the `trash`, if a file with a matching name is already in the bin, the extension `.old`, while the newly moved file's name is not changed. </br> *Example `myfile_1` is renamed as `myfile_1.old`* </li></ul> |
| 7. | [restore](https://github.com/thecypherzen/automation_scripts/blob/main/restore) | A script that restores a trashed file to the current working directory. Usefule to avoiding unwanted deletion of files when using the `rm` command exclusively.<br/> Usage: `restore <file_1> [file_2, ...]` where the arguments passed are names to files or directories in the trash. <ul><li>If file any file passed is not in `~/.trash`, an error occurs.</li><li>Just like `trash` above, it requires at least one argument.</li><li>Currently, it can only restore the arguments passed to the current working directory. May be updated later to work better.</li></ul> `Note: for the 'trash' script to work as expected, set an alias to mask the 'rm' command:` For example: In your `.bashrc` file, set `alias rm='/path/to/trash/script` to mask the `rm` command. You might also want to set an alias for `restore` as well, eg. `alias restore='/path/to/restore/script`.</br> When you actually want to `rm` a file or directory, use `rmf` instead.|
| 8. | [rmf](https://github.com/thecypherzen/automation_scripts/blob/main/rmf) | This script executes the `rm` command, unmasking the hook `trash` made to `rm`.</br>Usage `rmf <file_1> [file_2,...]`.<ul><li>The arguments can be either files or directories, the script knows how to handle each</li><li>Since it internally executes the `rm` command in a subshell, all default operations of the `rm` command works as expected when `rmf` is used.</li><li>Note that the `-f` flag is passed and so the arguments are forcibly removed.</li><li>It doesn't accept any flags, so if passed, it would treat it as a filename instead. </li></ul>|

## Want to try? ##
Simply [clone the repo](https://github.com/thecypherzen/automation_scripts/commit/677561bd1735a6cc2b509d7d7007507fccca50fd) and you'll have them. Enjoy

