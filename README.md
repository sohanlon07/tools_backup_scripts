**Backup Scripts**

_backuptools.sh_

Simple Bash script to rsync profile data to a folder, zip it up and then copy to Google Drive.

* Uses rsync to back up everything in home folder except for folders and files in an exclude list called list.txt whcih should be created to exclude anything you dont want rsync'd (see example.list.txt for an example).
* Add step to backup brew packages. 
  * This creates a restore script in your Google Drive folder.
  * Utilises backup-brew.sh created by xuhdev and can be found on github: https://gist.github.com/xuhdev/7854010#file-backup-homebrew-sh