#!/bin/bahs

# delete the old files which is older than 15 days

LOGS_DIR=/root/Shellscript-viswa/logs-dir

DATE=$(date +%F:%H:%M:%S) #It will print the date with human readble format like this "2025-06-25"
LOGDIR=/root/Shellscript-viswa/script-log
# logs will store this format: /root/Shellscript-viswa/script-log/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGDIR/$0-$DATE.log

FILES_TO_DELETE=$(find /root/Shellscript-viswa/logs-dir -type f -mtime +15)

ehco "script started exeuting at $DATE"

while read line

do
  
   echo " Deleting $line" &>>LOGFILE
   rm -rf $line

done <<< $FILES_TO_DELETE