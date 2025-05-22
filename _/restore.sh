#!/bin/bash -e
# A simple script to "restore" files from the _bak folder
# Too many things broke with 1.21, so they have to be fixed one at a time

function bail() {
    echo $@
    exit 1
}
if [[ -z "$1" ]] || [[ ! -f "$1" ]]; then
    bail "Must specify a valid filename, e.g. magic_behavior/_bak/foo"
elif ! echo $1 | grep -q "/_bak/"; then
    bail "Specified file must reside in magic_behavior/_bak or magic_resouce/_bak"
fi

srcFile=$1
dstFile=$(echo $1 | sed 's|_bak/||g')
echo "Moving $srcFile to $dstFile"
git mv $srcFile $dstFile
