#!/bin/bash
# filecheck.sh checks file attributes for a given path
# Author: France Mhary Jasareno, BSIT 4C

read -p "Enter a path: " filepath

echo "Checking: $filepath"
echo ""

[[ -e "$filepath" ]] && echo "exists          : yes" || echo "exists          : no"
[[ -f "$filepath" ]] && echo "regular file    : yes" || echo "regular file    : no"
[[ -d "$filepath" ]] && echo "directory       : yes" || echo "directory       : no"
[[ -s "$filepath" ]] && echo "not empty       : yes" || echo "not empty       : no"
[[ -r "$filepath" ]] && echo "readable by me  : yes" || echo "readable by me  : no"
[[ -w "$filepath" ]] && echo "writable by me  : yes" || echo "writable by me  : no"
[[ -x "$filepath" ]] && echo "executable by me: yes" || echo "executable by me: no"