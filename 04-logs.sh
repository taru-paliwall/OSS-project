#!/bin/bash
# Author: TARU
# Purpose: Log File Analyzer
# Suggested log path for Vlc: /var/log/vlc.log

LOG_FILE=$1
KEYWORD=$2
echo "================================================================================"
echo "                   Vlc AUDIT - LOG FILE ANALYZER                "
echo "================================================================================"

echo "Analyzing log file: $LOG_FILE"

echo "Searching for keyword: $KEYWORD"

count=0
while read line; do
  if [[ $line == *$KEYWORD* ]]; then
    ((count++))
  fi
done < $LOG_FILE
echo "Keyword '$KEYWORD' found $count times in the log file."

tail -n 5 $LOG_FILE | grep $KEYWORD
echo "================================================================================"