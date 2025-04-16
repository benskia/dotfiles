#!/usr/bin/env bash

declare -A toIgnore

for name in .git install.sh README.md; do
	toIgnore["$name"]=1
done

for item in * .*; do
	if [[ ${toIgnore["$item"]} ]]; then
		continue
	fi
	cp -r "$item" $HOME
done
