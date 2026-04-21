#!/bin/bash
#The until loop
counter=1
until [ $counter -gt 10 ]; do
	echo $counter
	((counter++))
done
echo “loop exited”
echo “counter equals $counter
