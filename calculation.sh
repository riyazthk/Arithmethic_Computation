#! /bin/bash  
read -p "enter a first value :" a
read -p "enter a second value :" b
read -p "enter a third vslue :" c

declare -A val
j=0
result[ (j++) ]=$(( ($a+$b)*$c ))
result[ (j++) ]=$(( ($a*$b)+$c ))
parttime=8
result[ (j++) ]=$(( $c +($a /$b) ))
result[ (j++) ]=$(( ($a%$b)+$c ))
echo ${#result[@]}
for i in "${!result[@]}"
do
echo "$i=>${result[$i]}"
done

#ascending order

for ((i=${#result[@]};$i>0;i--))
do
   for ((j=0;$j<$(($i-1));j++))
   do
      if [[  result[j]  -gt result[j+1] ]]
        then
           temp=$((${result[j]}))
           result[j]=$((${result[j+1]}))
           result[j+1]=$temp
        fi
   done
done
echo ${result[@]}

#descending order

for ((i=${#result[@]};$i>0;i--))
do
   for ((j=0;$j<$(($i-1));j++))
   do
      if [[  result[j]  -lt result[j+1] ]]
        then
           temp=$((${result[j]}))
           result[j]=$((${result[j+1]}))
           result[j+1]=$temp
        fi
   done
done
echo ${result[@]}



