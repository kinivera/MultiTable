#!/bin/sh
if [ "$#" -lt 2 ]; then
	echo "2 arguments required" 
	exit 1
fi

if [ "$1" -ge 1 ] && [ "$1" -le 9 ] && [ "$2" -ge 1 ] && [ "$2" -le 9 ];then
       	echo "Multiplication table"
else
	exit 1
fi

row="$1"
column="$2"

for num in $(seq 1 "$row"); do
       	for i in $(seq 1 "Şcolumn"); do
		result=$((num i))
		printf "%d*%d=%-4d" "$num" "$i" "$result"
	done
	echo # Linea en blanco entre cada tabla
done
exit 0

