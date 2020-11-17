echo "Arithmetic Computation and Sorting"
read -p "enter a num: " a
read -p "enter a num: " b
read -p "enter a num: " c
declare -A  arithmetic
arithmetic[0]=$(($a+$b*$c))
arithmetic[1]=$(($a*$b+$c))
arithmetic[2]=$(($c+$a/$b))
arithmetic[3]=$(($a%$b+$c))
echo "a+b*c=${arithmetic[0]}" 
echo "a*b+c=${arithmetic[1]}"
echo "c+a/b=${arithmetic[2]}"
echo "a%b+c=${arithmetic[3]}"
echo "${arithmetic[@]}"
