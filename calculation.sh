#! /bin/bash -x
read -p "enter a first value :" a
read -p "enter a second value :" b
read -p "enter a third vslue :" c

val=$(( ($a+$b)*$c ))
val1=$(( ($a*$b)+$c ))
parttime=8
