#!/bin/bash

echo "Enter color name"
read color

case $color in
	black | white ) echo "Pure Colors"
		;;
	"red" ) echo "I like this one"
	;;
	* ) echo "I think $color is also nice"
esac