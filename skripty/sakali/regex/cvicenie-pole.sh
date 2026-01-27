#!/usr/bin/env bash

users=($(cut -d: -f1 /etc/passwd))

echo "useri:"
printf "%s\n" "${users[@]}"

echo "<---------------------------------------------------------->"

users=($(awk -F: '$3 >= 1000 && $3 <= 2000 {print $1}' /etc/passwd))

echo "ľudia:"
printf "%s\n" "${users[@]}"

echo "<---------------------------------------------------------->"

echo "ľudia a ich ID"
for u in "${users[@]}"; do
	uid=$(id -u "$u")
	echo "$u $uid"
done
