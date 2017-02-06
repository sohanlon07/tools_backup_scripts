#!/bin/bash
rsync -av --delete ~/Library/Application\ Support/Sublime\ Text\ 3 ~/Google\ Drive/Documents/Profiles_Backup
rsync -av --delete ~/.npm* ~/Google\ Drive/Documents/Profiles_Backup/npm_backup
rsync -av --delete ~/.bash* ~/Google\ Drive/Documents/Profiles_Backup/bash_backup
rsync -av --delete ~/.docker* ~/Google\ Drive/Documents/Profiles_Backup/docker_backup
rsync -av --delete ~/.bosh* ~/Google\ Drive/Documents/Profiles_Backup/bosh_backup
rsync -av --delete ~/.gem ~/Google\ Drive/Documents/Profiles_Backup/gem_backup
rsync -av --delete ~/.git* ~/Google\ Drive/Documents/Profiles_Backup/git_backup
rsync -av --delete ~/.groovy ~/Google\ Drive/Documents/Profiles_Backup/groovy_backup
rsync -av --delete ~/.rvm ~/Google\ Drive/Documents/Profiles_Backup/rvm_backup
rsync -av --delete --exclude=workspace ~/.jenkins ~/Google\ Drive/Documents/Profiles_Backup/jenkins_backup
rsync -av --delete ~/.m2 ~/Google\ Drive/Documents/Profiles_Backup/m2_backup
rsync -av --delete ~/.ssh ~/Google\ Drive/Documents/Profiles_Backup/ssh_backup
rsync -av --delete ~/.viminfo ~/Google\ Drive/Documents/Profiles_Backup/viminfo_backup