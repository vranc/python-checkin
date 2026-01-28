#!/usr/bin/env bash

cat regex

echo "grep multiple characters via regex"
cat regex | grep [abc]
cat regex | sed -E "s/[aei]/X/g"

echo "^ for reverse match"

echo "$ is end of line"
cat regex | sed -E "s/$/X/g"

echo "? - element before can occur 0-1"
echo "* - element before can occur 0-n"
echo "+ - element before can occur 1-n"
