#!/bin/bash


if [[ $1 ]] && [[ `echo "$1" | grep -E ^[[:digit:]]+$` ]]
then
	zahl1=$1
	echo "Die erste Zahl lautet: $zahl1"
else
	zahl1=''
	until [[ `echo "$zahl1" | grep -E ^[[:digit:]]+$` ]]
	do
		read -p "Erste Zahl: " zahl1
	done
	echo "Die erste Zahl lautet: $zahl1"
fi

#read -p "Zweite Zahl: " zahl2

if [[ $2 ]] && [[ `echo "$2" | grep -E ^[[:digit:]]+$` ]]
then
	zahl2=$2
	echo "Die zweite Zahl lautet: $zahl2"
else
	zahl2=''
	until [[ `echo "$zahl2" | grep -E ^[[:digit:]]+$` ]]
	do
		read -p "Zweite Zahl: " zahl2
	done
	echo "Die zweite Zahl lautet: $zahl2"
fi

ergebnis=$((zahl1+zahl2))

echo "Zwischenergebnis 2: " $ergebnis

count=4

while [[ $zahlx != 'exit' ]] 
do
	

	if [[ `echo "$zahlx" | grep -E ^[[:digit:]]+$` ]]
	then
		read -p "$count. Zahl: " zahlx
		ergebnis=$((ergebnis+zahlx))
		echo "Zwischenergebnis $count: " $ergebnis
		count=$((count+1))
	else
		zahlx=''
		until [[ `echo "$zahlx" | grep -E ^[[:digit:]]+$` ]]
		do
			if [[ $zahlx = 'exit' ]]
			then
				break
			else
				count=$((count-1))
				read -p "$count. Zahl: " zahlx
				
				ergebnis=$((ergebnis+zahlx))
				echo "Zwischenergebnis $count: " $ergebnis
				count=$((count+1))
				
			fi
			
		done
		
	fi
done

echo "Endergebnis lautet:" $ergebnis". Das Programm wurde beendet."