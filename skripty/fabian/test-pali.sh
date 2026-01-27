#!/bin/bash

read -p "zadaj slovo:" slovo
dlzka = ${#slovo}


for ((i = $dlzka;y = 0; i >= 0;y <= $dlzka; i--;y++)); do
    if [[ "${slovo[i]}" != "${slovo[y]}" ]]; then
        break
    fi
done
