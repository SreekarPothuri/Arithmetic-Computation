#!/bin/bash

echo "Welcome to Arithmetic computation and sorting problem"

read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c

pb1=$(( $a + ($b * $c) ))
pb2=$(( ($a * $b) + $c ))
pb3=$(( $c + ($a / $b) ))
pb4=$(( ($a % $b) + $c ))

declare -A Calculations
declare -a ArrayofResults
store_results()
{
	Calculations[$1]=$2
}

store_results 1 $pb1
store_results 2 $pb2
store_results 3 $pb3
store_results 4 $pb4

echo "Key : ${!Calculations[@]} ---- Value : ${Calculations[@]}"

for(( i=0; i<=4; i++))
do
	ArrayofResults[$i]=${Calculations[$i]}
done

for (( i=0; i<=4; i++ ))
do
        for (( j=$(($i + 1)); j<=4; j++ ))
        do
                if [[ ${ArrayofResults[$j]} -gt ${ArrayofResults[$i]} ]]
                then
                        temp=${ArrayofResults[i]}
                        ArrayofResults[i]=${ArrayofResults[j]}
                        ArrayofResults[j]=$temp
                fi
        done
done

echo ${ArrayofResults[@]}



