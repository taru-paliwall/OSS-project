#!/bin/bash
# Author: TARU
# Purpose: Disk and Permission Auditor

dirs=("/etc" "/var/log" "/usr/bin" "/usr/lib" "/var/www" "/etc/vlc" "/var/log/vlc")

echo "================================================================================"
echo "                   Vlc AUDIT - DIRECTORY AUDITOR                "
echo "================================================================================"
for dir in "${dirs[@]}"; do
  if [ -d $dir ]; then
    echo -n "$dir:"
    echo -n " Size: $(du -sh $dir | cut -f1)"
    echo -n " Permissions: $(stat -c %a $dir)"
    echo -n " Owner: $(stat -c %U $dir)"
    echo ""
  else
    echo "$dir does not exist."
  fi
done
echo "================================================================================"