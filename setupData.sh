#!/bin/bash

MyPath=~/.config/descq/data

if [ -d $MyPath ]; then
    echo "descq/data already exists"
    echo "DELETE first if you wish to re-create"
    exit
fi
mkdir ~/.config/descq
cp -r data ~/.config/descq
