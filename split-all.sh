#!/bin/bash

if [ ! -d "./left screen" ]; then
    mkdir "./left screen"
    echo "Created directory: ./left screen"
else
    echo "Directory already exists: ./left screen"
fi

if [ ! -d "./right screen" ]; then
    mkdir "./right screen"
    echo "Created directory: ./right screen"
else
    echo "Directory already exists: ./right screen"
fi

for file in *.jpg *.jpeg *.png; do
  if [[ -f "$file" ]]; then
    ./paper-split.sh "$file"
  fi
done

./file-mover.sh

echo "Process complete."
