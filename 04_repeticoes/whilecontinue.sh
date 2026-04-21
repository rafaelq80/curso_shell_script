#!/bin/bash
#The continue statement

read -p "Digite um número ENTRE 1 e 10: " CONTINUE

counter=1
while [ $counter -le 10 ]; do
	echo $counter
	((counter++))
	if [ $counter == $CONTINUE ]; then
		echo “condition met”
		continue
		echo “after continue”
	fi
	echo “loop keeps going”
done
echo “loop exited”
echo “counter equals $counter”
