#!/bin/sh
destination=$1
shift
files=("$@")
echo "Cpying ${#files[@]} Files to $destination"
for f in "${files[@]}"
do
cp -r "$f" "$destination"
done
echo "${#files[@]} files copied to $destination"

