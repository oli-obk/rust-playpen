#!/usr/bin/dash

set -o errexit

rustc - -C opt-level=$1 --test -o out
printf '\377' # 255 in octal
exec ./out
