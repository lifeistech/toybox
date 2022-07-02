array=`find . -name *.xcodeproj -type d`
for dir in $array; do
   echo $"enable markdown preview on "$dir" (y/N): "
   read -n1 -p "" yn; if [[ $yn = [yY] ]]; then touch $dir/.xcodesamplecode.plist; else echo skiped; fi
done
