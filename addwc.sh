#!/usr/bin/env bash 


echo -e "#"$(cat $1 | wc -$2) >> $1

