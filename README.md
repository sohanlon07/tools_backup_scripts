##Backup Scripts

_backuptools.sh_

Simple Bash script to rsync profile data to Google Drive

* Google Drive on mac defaults to "Google Drive" on install so $BACKUPPTH inside quotes to cater for space in "Google Drive".
* Varibale can be modified for custom location.
* mkdir will ignore creating of a folder if it already exists.
* Rsync will create last folder in path if it doesnt exist

