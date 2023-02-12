#!/bin/bash

# Alex Pinch, last updated Feb. 11th 2023
# This script makes a directory named the date
# This code snippet was created for tracking model output and is designed to be incorporated into a larger wrapper script

DIR=$(date +%Y%m%d%H%M%S)
mkdir "data/run_$DIR"
