#!/bin/sh

echo "Processing: "$1

echo "\n===========================SUB FINDER============================"
echo "Processing with subfinder"
subfinder -d $1 > $1"_subfinder.txt"
echo "Subfinder processor completed. Results are stored in "$1"_subfinder.txt"
echo "===========================END SUB FINDER=========================\n"

echo "\n==========================FINDOMAIN============================="
echo "Processing with findomain"
findomain-osx -t $1 > $1"_findomain.txt"
echo "Findomain processor completed. Results are stored in "$1"_findomain.txt"
echo "===========================END FINDOMAIN==========================\n"

echo "\n=========================ASSET FINDER==========================="
echo "Processing with assetfinder"
assetfinder --subs-only $1 > $1"_assetfinder.txt"
echo "Assetfinder processor completed. Results are stored in "$1"_assetfinder.txt"
echo "==========================END ASSET FINDER=======================\n"

echo "\n========================AMASS==================================="
echo "Processing with amass"
amass enum -d $1 > $1"_amass.txt"
echo "Amass processor completed. Results are store in "$1"_amass.txt"
echo "========================END AMASS================================\n"
