#! /bin/bash -x
read -p "enter a first value :" a
read -p "enter a second value :" b
read -p "enter a third vslue :" c

declare -A result

result=$(( ($a+$b)*$c ))
result=$(( ($a*$b)+$c ))
parttime=8
result=$(( $c +($a /$b) ))
result=$(( ($a%$b)+$c ))
