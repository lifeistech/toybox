#!/bin/bash


LF=$(printf '\\\012_')
LF=${LF%_}
sed -i-e "3s/^/hoge${LF}/" tmp.txt


array=`find . -name "*.md" -type f -maxdepth 2 -mindepth 2`
main_readme=`find . -name "README.md" -type f -maxdepth 1`
for dir in $array; do
   echo "enabling markdown preview on "$dir""
   # touch $dir/.xcodesamplecode.plist;
   sed -i '.bak' '$a\
   Hontono End'${LF}'' $main_readme
done

echo $main_readme

