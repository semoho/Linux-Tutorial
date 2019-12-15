#!/bin/bash

echo "input first number"
read a

counter=-1
while [[  $counter -lt $a ]]; do
	let counter=counter+1
	echo "The counter is $counter"
done