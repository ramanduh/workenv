#!/usr/bin/env bash

# Backup files in the current dir to ftp server
# only protected pdfs should be send online

lftp ftp://ramanduh@ftp.ramanduh.fr -e "mirror -I *_protected.pdf -e -R . /BackupMyDossier ; quit"
