#!/bin/bash
find . -type f \( -iname "*.jpeg" \) -exec sh -c 'cwebp -q 80 "$1" -o "${1%.*}.webp" && rm "$1"' _ {} \;
