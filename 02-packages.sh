#!/bin/bash
# Author: TARU
# Purpose: FOSS Package Inspector

# Detect OS and define package name
if [ -f /etc/debian_version ]; then
  PACKAGE_NAME="vlc"
else
  PACKAGE_NAME="vlc"
fi

# Check installation status and extract version
if dpkg -s $PACKAGE_NAME &> /dev/null; then
  echo "================================================================================"
  echo "                   Vlc AUDIT - PACKAGE INSPECTOR                "
  echo "================================================================================"
  echo "Status: $PACKAGE_NAME is INSTALLED on this $(cat /etc/os-release | grep PRETTY_NAME | cut -d '=' -f2-) system."
  echo "Version: $(dpkg -s $PACKAGE_NAME | grep Version | cut -d ' ' -f2-)"
  echo "--------------------------------------------------------------------------------"
  echo "FOSS Philosophy Notes:"
  echo " - Vlc: A free and open-source media player that promotes the values of open-source software."
  echo " - Firefox: A free and open-source web browser that advocates for a free and open internet."
  echo " - LibreOffice: A free and open-source office suite that supports the open-source movement."
  echo " - GIMP: A free and open-source raster graphics editor that demonstrates the power of community-driven development."
  echo "================================================================================"
else
  echo "$PACKAGE_NAME is NOT installed."
fi