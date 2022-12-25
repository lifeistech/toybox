#! /bin/bash

json='{"pages": ['
for d in */; do
    # README.md が存在しないフォルダはスキップ
    if [ ! -f "$d/README.md" ]; then
        continue
    fi
    # title の # と空白を削除
    title=$(head -n 1 "$d/README.md" | sed 's/# //g')
    json+='{"title": "'$title'", "lines": ['
    json+='"'$title'",'
    json+='"[https://github.com/lifeistech/toybox/raw/main/'$title'/'$title'.gif]",'
    while read line; do
        if [[ $line =~ ^! ]]; then
            continue
        elif [[ $line =~ ^# ]]; then
            # # をすべて削除し、行頭に [*、行末に ] を追加
            line="[*${line//#/}] "
        elif [[ $line =~ ^- ]]; then
            # -をtabに置き換え
            line="  ${line//-/} "
        fi
        json+='"'$line'",'
    done < <(tail -n +2 "$d/README.md")
    json+="]},"
done
json+="]}"
json=$(echo "$json" | sed -e 's/,]/]/g')

echo $json > scrapbox.json
