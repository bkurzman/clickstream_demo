#!/bin/bash

filename="web-clicks.tsv"

while IFS= read -r line; do

    echo $line | nc localhost 9797
    sleep 0.25

done < "$filename"

