#!/bin/sh

# You can edit these variables

version="4.0"
nodotversion="40"
lastpatch="41"

# You probably don't want to edit anything below this line

for i in `seq 1 $lastpatch`;
do
    number=$(printf %02d $i)
    file="https://ftp.gnu.org/pub/gnu/bash/bash-${version}-patches/bash${nodotversion}-0$number"
    echo $file
    curl $file | patch -N -p0
done
