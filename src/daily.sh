#!/bin/bash

BKPDATE=`date "+%d-%m-%Y"` # Adjust to fit your region date format - https://linux.die.net/man/1/date
DAYBEFORE=`date --date "-1 days" +"%d-%m-%Y"` # And here too

aws s3 sync /folder/subfolder/ s3://bucket_name/path/$DAYBEFORE/
if [ "$?" = 0 ]; then
  find /folder/subfolder/ -mindepth 1 -mtime +1 -delete # Adjust -mindepth and -mtime parameters to set how find will search for files
else
  echo "$BKPDATE - Error while trying to backup files from $DAYBEFORE to S3" >> /var/log/you_name_it # Change log name to whatever you want
fi
