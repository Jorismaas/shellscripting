#!/usr/bin/env bash 

echo [[ $1 = *.sh ]]

#if [[ $1 = *.txt ]]
#then
#	cat $1 || echo "error 1"
#elif [[ $1 = *.py ]]
#then
#	python3 $1 || echo "error 2"
#elif [[ $1 = *.sh ]]
#then
#	bash $1 || echo "error 3"
#else
#	echo "error"
#fi

case $1 in

	*.sh)
		bash $1 || echo error bash
		;;
	
	*.txt)
		cat $1 || echo error cat
		;;
	
	*.py)
		python3 $1 || echo error python
		;;
	
	*)
		echo error
		;;
esac
