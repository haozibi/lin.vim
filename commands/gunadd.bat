#! /usr/bin/env bash

cmdname=${0##*/}

helpmsg () {
    echo "Brief:"
    echo "    git add"
    echo "Usage:"
    echo "    $cmdname"
    echo "Try again"
    echo ""
}

# error 1: git comment is a must
if [ $# -gt 1 ]; then
    helpmsg
    exit 1
fi

# error 2: not a git repository
if ! git status 1>/dev/null 2>&1; then
    echo "error: git repository not exist"
    helpmsg
    exit 1
fi

cd $(groot)
git add -A .
