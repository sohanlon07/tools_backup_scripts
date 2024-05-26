#!/bin/bash

BACKUPPTH=~/Profiles_Backup

ARCHIVE="Profiles_Backup.tar.gz"

#If exists, will ignore creation of folder
#$BACKUPPTH inside quotes to cater for space in "Google Drive"
mkdir "$BACKUPPTH"

#rsync will create backup folders
rsync -av --exclude-from="list.txt" --delete ~/ "$BACKUPPTH"

# echo "Creating HomeBrew Restore Script"
sh backup-brew.sh -v > "$BACKUPPTH"/restore-homebrew.sh && chmod +x "$BACKUPPTH"/restore-homebrew.sh

#Tar up the backup to Documents folder
tar -cvf "$HOME/Documents/$ARCHIVE" "$BACKUPPTH"

#Delete contents of backup folder
rm -rf "$BACKUPPTH"

echo "Sync Completed"