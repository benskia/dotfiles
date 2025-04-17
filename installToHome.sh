#!/usr/bin/env bash

declare -A toIgnore

# Add item names to ignore here
for name in .git .gitignore README.md installToHome.sh pullFromHome.sh; do
	toIgnore["$name"]=1
done

for item in * .*; do
	if [[ ${toIgnore["$item"]} ]]; then
		continue
	fi
	echo "Copying $item  =>  $HOME$item"
	cp -r "$item" $HOME
done
