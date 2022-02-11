#!/usr/bin/env bash
#
# Time-stamp: <2022-02-11 13:23:11 peter>

set -euo pipefail

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)


cd "$script_dir"/data

FLIP=$((RANDOM%2))
if [ $FLIP -eq 1 ];then
    echo $(shuf -n1 adjectives.txt) $(shuf -n1 colors.txt)     $(cat words.txt animals.txt| shuf -n1 )
else
    echo $(shuf -n1 colors.txt)     $(shuf -n1 adjectives.txt) $(cat words.txt animals.txt| shuf -n1 )
fi

