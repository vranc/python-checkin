#!/bin/env bash

# Načítanie knižníc
for lib_file in lib/*; do
    if [ -f "$lib_file" ]; then
        source "$lib_file"
    fi
done

# Spustenie systémovej kontroly
system_check
