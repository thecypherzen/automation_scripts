# Automation Scripts #

## Introduction ##
As **ALXSE students** (or learning to code elsewhere), we find ourselves
repeating tasks like setting defining 'git config' values for each repo,
compiling C source code in certain ways, writing hashbangs for each script and
granting x permissions, and the likes.

I wrote these scripts to take the redundancy and unecessary iteration
off us, so we can focus on learning. You should try them out.

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

## Want to try? ##
Simply [clone the repo](https://github.com/thecypherzen/automation_scripts/commit/677561bd1735a6cc2b509d7d7007507fccca50fd) and you'll have them. Enjoy
