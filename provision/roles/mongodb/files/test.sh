#!/bin/bash
c=1
while [ $c -le 1000 ]
do
	curl "https://www.mockaroo.com/b9bc7d40/download?count=1000&key=cbe42180" >> "ters.json"
	(( c++ ))
done

#Add extra newline to all files
find . -type f -name '*.json' -exec bash -c 'printf "\n\n" >> {}'  \;
#merge all files into one
find . -type f -name 'person_data_*.json' -exec cat {} + >> final.json