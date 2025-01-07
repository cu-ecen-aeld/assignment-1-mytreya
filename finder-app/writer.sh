#!/usr/bin/bash
function usage() {
  echo "writer.sh <file> <content>"
  exit 1
}
if [[ $# -ne 2 ]]; then
   usage
fi

file=$1
content=$2
mkdir -p `dirname $file`
echo $2 > $1
