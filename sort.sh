#!/bin/bash
echo "Welcome to Arithmetic Computation and Sorting program"
declare -A  arithmetic
read -p "enter a num: " a
read -p "enter a num: " b
read -p "enter a num: " c
for((i=0; i<4; i++))
do
  case $i in
     0)arithmetic[0]=$(($a+$b*$c))
       echo "a+b*c=${arithmetic[0]}"
            ;;
     1)arithmetic[1]=$(($a*$b+$c))
       echo "a*b+c=${arithmetic[1]}"
            ;;
     2)arithmetic[$i]=$(($c+$a/$b))
       echo "c+a/b=${arithmetic[2]}"
            ;;
     3)arithmetic[$i]=$(($a%$b+$c))
       echo "a%b+c=${arithmetic[3]}"
            ;;
  esac
done
echo "array in original order"
echo "${arithmetic[@]}"
for((i = 0; i<4; i++)) 
do

    for((j = 0; j<4; j++)) 
    do
        if(( ${arithmetic[$j]} < ${arithmetic[$((j+1))]} ))
        then
            temp=${arithmetic[$j]} 
            arithmetic[$j]=${arithmetic[$((j+1))]}   
            arithmetic[$((j+1))]=$temp 
        fi
    done
done
echo "array in descending order"
echo "${arithmetic[@]}"
