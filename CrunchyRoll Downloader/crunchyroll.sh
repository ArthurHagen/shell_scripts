mkdir output
cd output
while read url; do youtube-dl --sub-lang enUS --write-sub $url; done < ../links.txt
