#! /bin/bash -x
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

for ((i=0;$i<=$a;i++))
do
   va=$(( ${result[i]} ))
   for ((j=i;$j<=$a;j++))
   do
     value=$(( ${result[j]} ))
        if [[ $va -gt $value ]]
        then
           temp=$va
           va=$(($value))
           value=$(($temp))
        fi
       result[(i)]=$(($va))
       result[(j)]=$(($value))
   done
done
echo ${result[@]}

#descending order

for ((i=0;$i<=$a;i++))
do
   va=$(( ${result[i]} ))
   for ((j=i;$j<=$a;j++))
   do
     value=$(( ${result[j]} ))
        if [[ $va -lt $value ]]
        then
           temp=$va
           va=$(($value))
           value=$(($temp))
        fi
       result[(i)]=$(($va))
       result[(j)]=$(($value))
   done
done
echo ${result[@]}

