#!/usr/bin/env bash

if [ "$(basename "$PWD")" = 'scripts' ]; then cd ..; fi

cd ./assets/icons/

for file in *.svg; do 
    if [ -f "$file" ]; then 
        echo "$file"
        echo "${file}.vec"
        fvm dart pub global run vector_graphics_compiler -i $file -o ${file}.vec
    fi 
done

