#!/usr/bin/env bash

current_dir=$(pwd)

cd "$(dirname "$0")"

for package in */; do
  # Remove the trailing slash from the package name
  package=${package%/}
  echo "Unstowing package: $package"
  stow -D "$package"
done

cd $current_dir
