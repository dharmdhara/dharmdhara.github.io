#!/bin/bash
#echo "BASH FIELD 1:    $1"

#grep -i $1 arogyadhara.txt > testing.txt
#grep -i "$1" /var/www/html/dharmdhara/dharmdhara.txt | awk '{print $0,"\n"}' > /var/www/html/dharmdhara/testing.txt
absPath=$(pwd)
grep -il "$1" $absPath/vinayjha/* | awk '{print $0,"\n"}' > testing.txt
cat testing.txt | cut -d "/" -f7-9 | awk '{$1=$1};1' > testing2.txt
cp /dev/null testing.txt
sed -i '/^$/d' testing2.txt
OIFS="$IFS"
IFS=$'\n'
for i in `cat testing2.txt`
do
#grep -i "$i" /var/www/html/dharmdhara/articles/vinayjha.html >> /var/www/html/dharmdhara/testing.txt
temp1="<a href=\""
temp2="\">"
temp3="</a>"
concatstr="$temp1""$i""$temp2""$i""$temp3"
#echo "$i" >> testing23.txt
echo $concatstr >> testing.txt
done
IFS="$OIFS"
if [ $2 = 'D' ]; then
        #cat /var/www/html/dharmdhara/testing.txt| fold -w 165 -s
        cat testing.txt
        #cat testing.txt|fmt --width=150
fi

if [ $2 = 'M' ]; then
        cat testing.txt| fold -w 40 -s
        #cat testing.txt|fmt --width=50
fi
