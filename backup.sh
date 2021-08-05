#!/bin/bash

mysqldump --all-databases > /home/user/dbbackup.sql

# Place tar.gz directories you want to save into /home ( tar cvf - YOUR_DIRECTORY | gzip -9c > /home/backup.tar.gz )

tar cvf - /home | gzip -9c > /home/backup.tar.gz
/usr/bin/openssl des -in /home/backup.tar.gz -out /home/backup.sec

rm -rf /home/backup.tar.gz

cp /home/backup.sec YOUR_DEVICE # Edit this

rm -rf /home/backup.sec