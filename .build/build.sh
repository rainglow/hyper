#!/bin/bash

# Run docker image to build the themes.
docker run -e PATTERN=hyper -v $PWD/output/:/src/output daylerees/rainglow:latest

# Kill old themes.
rm -rf ../colors/*

# Move themes to the root.
cp -R output/hyper/* ../colors/

# Delete temp themes.
rm -rf output