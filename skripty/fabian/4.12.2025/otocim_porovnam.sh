#!/usr/bin/bash

read -p "zadaj slovo: " slovo

pocet="${#slovo}"

obratene=""

while read i; do
	obratene="$obratene${slovo:$i:1}"
done < <(seq $((pocet-1)) -1 0)

echo $obratene

if [ $slovo == $obratene ]; then
	echo "Slovo ${slovo} je palindrom"
else
	echo "Slovo ${slovo} nie je palindrom"
fi

#DU dopln aby som mohol pouzit specialny znak
