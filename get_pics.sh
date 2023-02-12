#!/bin/bash

# Alex Pinch, last updated Feb. 11th 2023
# This script downloads a public Dropbox of images and opens them with the imaging software Pixea
# Replace URL and 'example' with desired Dropbox and directory name.

curl -L -o example.tar.gz "http://shorturl.at/example"
tar -xvf example.tar.gz
open logo.jpeg -a Pixea