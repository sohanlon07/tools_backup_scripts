#!/bin/bash

#Google Drive on mac defaults to "Google Drive" on Install.
BACKUPPTH=~/Google\ Drive/Profiles_Backup

#If exists, will ignore creation of folder
#$BACKUPPTH inside quotes to cater for space in "Google Drive"
mkdir "$BACKUPPTH"

#rsync will create backup folders
#For jenkins, omitting workspace folder
rsync -av --delete ~/Library/Application\ Support/Sublime\ Text\ 3 "$BACKUPPTH"/sublime_backup
rsync -av --delete ~/.npm* "$BACKUPPTH"/npm_backup
rsync -av --delete ~/.bash* "$BACKUPPTH"/bash_backup
rsync -av --delete ~/.docker* "$BACKUPPTH"/docker_backup
rsync -av --delete ~/.bosh* "$BACKUPPTH"/bosh_backup
rsync -av --delete ~/.gem "$BACKUPPTH"/gem_backup
rsync -av --delete ~/.git* "$BACKUPPTH"/git_backup
rsync -av --delete ~/.groovy "$BACKUPPTH"/groovy_backup
rsync -av --delete ~/.rvm "$BACKUPPTH"/rvm_backup
rsync -av --delete --exclude=workspace ~/.jenkins "$BACKUPPTH"/jenkins_backup
rsync -av --delete ~/.m2 "$BACKUPPTH"/m2_backup
rsync -av --delete ~/.ssh "$BACKUPPTH"/ssh_backup
rsync -av --delete ~/.viminfo "$BACKUPPTH"/viminfo_backup

echo "Sync Completed"