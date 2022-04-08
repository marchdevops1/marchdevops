#!/bin/bash
ls | grep -i test_script sh$ > out
while read line
do name=`echo $line | awk -F "." '{print $1}'`
	mv $name.sh $name.txt
done < out
ls | grep -i txt$
