##Backup Scripts

_backuptools.sh_

Simple Bash script to rsync profile data to Google Drive

* Google Drive on mac defaults to "Google Drive" on install; $BACKUPPTH inside quotes to cater for the space.
* Variable can be modified to a custom location.
* Creates the backup folder in Google Drive folder if it doesn't exist.
* Rsycn creates each backup folder if they don't exist.
* Runs a mysql backup for mysql users using sql dump.
* Add step to backup brew packages. This creates a restore script in your GDrive folder.
  * Utilises backup-brew.sh created by xuhdev and can be found on github: https://gist.github.com/xuhdev/7854010#file-backup-homebrew-sh
