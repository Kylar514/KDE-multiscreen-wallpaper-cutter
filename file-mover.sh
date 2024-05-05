#!/bin/bash

if [ ! -d "./alreadysplit" ]; then
    mkdir ./alreadysplit
    echo "Created directory: ./alreadysplit"
else
    echo "Directory already exists: ./alreadysplit"
fi

for file in *_0_DP*; do
    if [ -f "$file" ]; then
        mv "$file" ./left\ screen/
        echo "Moved $file to ./left screen/"
    fi
done

for file in *_1_DP*; do
    if [ -f "$file" ]; then
        mv "$file" ./right\ screen/
        echo "Moved $file to ./right screen/"
    fi
done

count=0
for file in *.jpg *.jpeg *.png; do
    if [[ -f "$file" ]]; then
        mv "$file" ./alreadysplit/
        echo "Moved $file to ./alreadysplit/"
        ((count++))
    fi
done

echo "A total of $count wallpapers complete."
