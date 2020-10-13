#!/bin/sh

echo "Processing: "$1

echo "Creating directory: "$1
mkdir $1

echo "Enumerating subdomains for "$1
subdomains.sh $1


FILENAME=$1"_domains.txt"

echo "Merging unique domains"
cat $1_* | sort | uniq > $FILENAME

echo "Add HTTP to every URL"
sed -i -e 's/^/http:\/\//' $FILENAME

echo "Running gowitness for "$FILENAME
./gowitness file -s $FILENAME -t 20

echo "Moving screenshots to "$1" directory"
mv *.png $1
