#!/bin/bash


if [[ $1 ]]
then
	echo "Die Eingabe lautet: $1"
	abfrage=$1
else
	read -p "Ihre Eingabe: " abfrage
	#while [[ $abfrage != 'q' ]] && [[ ! -e $abfrage ]]
	until [[ $abfrage = 'q' ]] || [[ -e $abfrage ]] 
	do
		read -p "Ihre Eingabe: " abfrage
		echo "Die Eingabe lautet: $abfrage"	
	done
fi

if [[ -e $abfrage ]]
then
	echo "Der Eintrag ist vorhanden: $abfrage"
else
	echo "Die Datei ist nicht vorhanden!"
fi
