array=`find . -name *.xcodeproj -type d`
for dir in $array; do
   echo "enabling markdown preview on "$dir""
   touch $dir/.xcodesamplecode.plist;
done
