#!/bin/sh

noteFilename="$HOME/Documents/Tasks/note-$(date +%Y-%m-%d).md"
if [ ! -f $noteFilename ] ;then
  echo "# Notes for $(date +%Y-%m-%d)" > $noteFilename
  nvim $noteFilename -c "norm o"
else 

nvim $noteFilename -c "norm G"
fi
