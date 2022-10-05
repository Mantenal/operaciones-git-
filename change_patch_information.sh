#!/bin/bash

word_old=$1
word_new=$2
patch_modf=$3

if grep $word_old $patch_modf -q
    then
        sed -i "s|$word_old|$word_new|g" $patch_modf
        echo "Changing $word_old for $word_new"
    else
        echo "The word: $word_old doesn't exist"
        exit
fi
