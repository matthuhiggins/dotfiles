#!/bin/bash
run() {
  suffix=$1
  shift

  dir=$(pwd)/$suffix
  files=$(cd $suffix && git ls-files)

  for file in $files; do
    echo "$@ $dir/$file ~/.$file"
    mkdir -p ~/.$(dirname $file)
    $@ $dir/$file ~/.$file
  done
}

source brew.sh
run link_files ln -f -s
run copy_files cp