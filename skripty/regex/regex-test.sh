#!/usr/bin/env bash

test -f || {
	echo "file text not found, exitting..."
}

input="$(cat text)"

echo "zmena malych pismen na velke"
echo "$input" | tr "[:lower:]" "[:upper:]"
echo
echo "zmena medzier na '_'"
echo "$input" | tr "[:space:]" "_"
echo
echo "anonymizacia veku"
echo "$input" | tr "[:digit:]" "*"
echo

echo "anonymizacia veku studentov - hardcoded"
echo "$input" | sed "s/student a ma [[:digit:]]/*/g"
echo "anonymizacia veku studentov - . = akykolvek znak"
echo "$input" | sed "s/student..........[[:digit:]]/*/g"
