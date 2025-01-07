#!/usr/bin/bash
function usage() {
  echo "finder.sh <filesdir> <searchStr>"
  exit 1
}
if [[ $# -ne 2 ]]; then
   usage
fi
filesDir=$1
searchStr=$2
if [ ! -d $filesDir ]; then
  usage
fi
numFiles=`find $filesDir/ -type f -print | wc -l`
matched=`grep -rl $searchStr $filesDir | wc -l`
echo "The number of files are $numFiles and the number of matching lines are $matched"
