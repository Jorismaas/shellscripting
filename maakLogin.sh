#!/usr/bin/env bash 
declare -i wachtwoord_verplicht_aantal_letters=9
echo Wat is jouw naam? :
read naam_login
letter_nummers=$(echo $naam_login | wc -c)
if [ $letter_nummers = 1 ]; then
	naam_login=$(whoami)
fi

#Vraagt wachtwoord op
echo Wat is jouw wachtwoord? :
read wachtwoord_login
declare -i wachtwoord_letter_nummers=$(echo $wachtwoord_login | wc -c)

#Herhaal wachtwoord invoer zodat het boven 8 characters is
while [ "$wachtwoord_letter_nummers" -lt 9 ]
do
echo Wachtwoord is te kort, gebruik minimaal 8 characters :
read wachtwoord_login
wachtwoord_letter_nummers=$(echo $wachtwoord_login | wc -c)
done

#Herhaal wachtwoord met loop tot het ingevulde wachtwoord hetzelfde is als je had ingevuld
echo Herhaling wachtwoord :
read wachtwoord_herhaling
while [ $wachtwoord_login != $wachtwoord_herhaling ] 
do
echo ingevoerde wachtwoord is niet hetzelfde, probeer opnieuw.
echo Herhaling wachtwoord :
read wachtwoord_herhaling
done
echo $wachtwoord_login > wachtwoord.txt
#slaat alles op in een login bestand
echo -e "\n"nieuwe login "\n"naam: $naam_login"\n"wachtwoord: $(md5sum -t wachtwoord.txt) 1>> $1

