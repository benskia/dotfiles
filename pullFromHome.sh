#!/usr/bin/env bash

for name in .zsh*; do
	src="$HOME/$name"
	dst="./"
	echo "Copying $src  =>  $dst$name"
	cp -r "$src" "$dst"
done

for name in .config/*; do
	src="$HOME/$name"
	dst="./.config/"
	echo "Copying $src  =>  $dst$name"
	cp -r "$src" "$dst"
done
