#!/usr/bin/env bash

echo '{
    "version": "0.2.0",
    "configurations": [
        {
            "type": "codelldb",
            "request": "launch",
            "name": "C++",
            "stdio": [
                "input.txt",
                null
            ],
            "preLaunchTask": "Compile",
            "postDebugTask": "Clean",
            "expressions": "native",
            "program": "${workspaceFolder}/${fileBasenameNoExtension}"
        }
    ]
}' >launch.json

echo '{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "Compile",
            "type": "shell",
            "command": "clang++ -std=c++20 -glldb -fstandalone-debug ${relativeFile} -o ${fileBasenameNoExtension}"
        },
        {
            "label": "Compile G++",
            "type": "shell",
            "command": "g++ -ggdb ${relativeFile} -o ${fileBasenameNoExtension}"
        },
        {
            "label": "Clean",
            "type": "shell",
            "command": "rm ${fileBasenameNoExtension}"
        }
    ]
}' >tasks.json
