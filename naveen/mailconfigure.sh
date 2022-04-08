#!/bin/bash
size=`df -h . | awk 'NR==2 {print $(NF-1)}' | sed 's/%//g'`
if [ $size -gt 30 ]
then 
		echo "the disk space reached trushhold limit" | mail -s "reached maximum threshold of $size"
fi	
