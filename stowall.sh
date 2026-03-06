#!/bin/bash

current_dir=$(pwd)

cd "$(dirname "$0")"

for package in */; do
  # Remove the trailing slash from the package name
  package=${package%/}
  echo "Stowing package: $package"
  stow "$package"
done

cd $current_dir
