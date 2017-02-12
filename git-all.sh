#!/bin/bash
for dir in `ls ~/`; do
  echo "## $dir"
  cd ~/$dir && git $1
  echo
done
