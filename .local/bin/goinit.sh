#!usr/bin/env bash

# parameter expansion: ## applies following pattern to longest match, */ matches
# to everything up to a slash
cmdDir=${PWD##*/}

# go mod init
go mod init "github.com/benskia/${cmdDir}"

# make common project directories
mkdir -p "cmd/${cmdDir}" internal bin

# make basic gitignore
echo "bin/" >.gitignore

# main src file
echo "package main" >"cmd/${cmdDir}/main.go"
