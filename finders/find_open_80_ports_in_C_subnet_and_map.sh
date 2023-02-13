#!/bin/sh

SUBNET=$1
TARGET_NET="${SUBNET}.0/24"
MAPED_OUT_FILE="namp_scan_${SUBNET}.1-254_$(date +%s)"

sudo nmap -A -p80 --open ${TARGET_NET} -oG ${MAPED_OUT_FILE}

## get screenshoots
for ip in $(cat ${MAPED_OUT_FILE} | grep 80 | \
	grep -v "Nmap" | awk '{print $2}' );
do
	cutycapt --url=${ip} --out=${ip}.png ;
done

## png to html
HTML="${SUBNET}_websites.html"
echo "<HTML><BODY><BR>" > ${HTML}

ls -1 *.png | \ 
	awk -F : '{print $1":\n<BR><IMG SRC=\""$1""$2"\"width=600><BR>"}' >> ${HTML}

echo "</BODY></HTML>" >> ${HTML}

