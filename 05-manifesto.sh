#!/bin/bash
# Author: TARU
# Purpose: Open Source Manifesto Generator

echo "================================================================================"
echo "                   Vlc AUDIT - MANIFESTO GENERATOR                "
echo "================================================================================"

echo "Please answer the following questions to generate your open-source manifesto:"

read -p "What is your name? " name
read -p "What is your favorite open-source project? " project
read -p "What do you think is the most important aspect of open-source software? " aspect

echo "" > $name.txt
echo "My name is $name, and I believe in the power of open-source software. My favorite project is $project, which has taught me the importance of collaboration and community-driven development. I think the most important aspect of open-source software is $aspect, as it allows for freedom, flexibility, and innovation. I will continue to support and contribute to open-source projects, and I hope to inspire others to do the same." >> $name.txt
echo "Manifesto generated and saved to $name.txt"
echo "================================================================================"