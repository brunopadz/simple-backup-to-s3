#!/bin/bash
BKPDATE=`date "+%d-%m-%Y"` # Adjust to fit your region date format - https://linux.die.net/man/1/date

# Adjust -mindepth and -mmin parameters to set how find will search for files
find /folder/subfolder/ -mindepth 1 -mmin -240 | while read logs; do
    aws s3 cp "$logs" s3://bucket/path/$BKPDATE/
done

if [ "$?" = 0 ]; then
  rm -rf /folder/subfolder/*
else
  echo "$BKPDATE - Error while trying to backup files to S3" >> /var/log/you_name_it_2 # Change log name to whatever you want
fi
