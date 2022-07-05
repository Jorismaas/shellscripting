#!/usr/bin/env bash 

"" > $2.txt

#twee >'s om ervoor te zorgen dat het onderop verschijnt
#for loop
#$1 $2
for file in $(ls)
do
$1 $file 2>> $2.txt
done
