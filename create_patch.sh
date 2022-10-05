#!/bin/bash

Cfile=$1
Patchfile=$2

git diff > $Patchfile
git checkout $Cfile
patch -p1 $Cfile $Patchfile

