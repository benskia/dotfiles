#!/usr/bin/env bash

# ZSH files in HOME
for name in .zsh*; do
  src="$HOME/$name"
  dst="./"
  echo "Copying $src  =>  $dst$name"
  cp -r "$src" "$dst"
done

# Tracked XDG_CONFIG dirs
for name in .config/*; do
  src="$HOME/$name"
  dst="./.config/"
  echo "Copying $src  =>  $dst$name"
  cp -r "$src" "$dst"
done

# Custom scripts
for name in .local/bin/*; do
  src="$HOME/$name"
  dst="./.local/"
  echo "Copying $src  =>  $dst$name"
  cp -r "$src" "$dst"
done
