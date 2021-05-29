#!/bin/sh
destination=$1
shift
files=("$@")
echo "Moving ${#files[@]} Files to $destination"
for f in "${files[@]}"
 do
   mv "$f" "$destination"
 done
echo "${#files[@]} files moved to $destination"
