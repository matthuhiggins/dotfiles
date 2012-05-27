#!/bin/bash
cd files
dir=$(pwd)
files=$(git ls-files)

for file in $files; do
  echo ".$file => $dir/$file"
  ln -f -s $dir/$file ~/.$file
done
