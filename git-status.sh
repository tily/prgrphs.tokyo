#!/bin/bash
for dir in `ls ~/`; do
  echo "## $dir"
  cd ~/$dir && git status
  echo
done
