#!/usr/bin/env bash 

echo "" > $2.txt
echo "" > $3.txt

#twee >'s om ervoor te zorgen dat het onderop verschijnt
#for loop
#$1 $2
for file in $(ls)
do
if $1 $file > /dev/null 2>> $2.txt
then
$1 $file 
echo $file command uitgevoerd! >> $3.txt
else
2>> $2.txt
echo $file command niet kunnen uitvoeren >> $3.txt
fi
done
