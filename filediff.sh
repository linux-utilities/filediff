#!/usr/bin/env bash

# Check for at least one parameter
if [ "$#" -lt 1 ]; then
    cat >&2 << EOF

Usage: $0 <command> [parameters]

EOF
fi

# Check for commands existance
find &>/dev/null
if [ "$?" -ne 0 ]; then
    cat >&2 << EOF
Unable to proceed without \`find\`.
EOF
fi

TMPDIR="$(mktemp -d)"
BEFORE="$TMPDIR/before.tree"
AFTER="$TMPDIR/after.tree"

find . > $BEFORE
output=$(eval "$@")
find . > $AFTER

if [ "$output" != "" ]; then
    echo "$output"
    echo
fi
diff --color=always $BEFORE $AFTER | tail -n-1

rm $TMPDIR/*
rmdir $TMPDIR
