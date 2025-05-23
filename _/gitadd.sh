#!/bin/bash -e
function gitadd()
{
    for file in $(git status | grep "modified:" | awk '{print $2}' | sort -u); do
        output=$(git diff $file)
        if [[ -z "${output}" ]]; then
            continue
        fi
        echo "============================================="
        git diff -w $file
        echo "Add $file? (y/n)"
        read line
        if [ "$line" == "y" ]; then
            echo "Adding $file"
            git add $file
        else
            echo "Skipping $file"
        fi
    done
}
gitadd
