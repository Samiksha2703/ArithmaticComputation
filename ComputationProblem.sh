#!/bin/bash/ 
echo "Welcome to the arithmatic computation and sorting program"

echo "Enter three integer numbers"
read a
read b
read c
echo "  a=$a b=$b c=$c"

echo "Computing a + b * c"
echo "  a=$a b=$b c=$c"
p=$(( $a + $b * $c ))
echo "   $a + $b * $c = $p   "

echo "Computing a * b + c"
echo "  a=$a b=$b c=$c"
q=$(( $a * $b + $c ))
echo "   $a * $b + $c = $q  "

echo "Computing c + a / b"
echo "  a=$a b=$b c=$c"
r=`echo "scale=2; $c + $a / $b" | bc -l`
echo "   $c + $a / $b = $r  "

echo "Computing a % b + c"
echo "  a=$a b=$b c=$c"
s=$(( $a % $b + $c ))
echo "  $a % $b + $c = $s "

t=$(( $c + $(( $a / $b )) ))

echo "Storing the result in the directory for every computation above"
declare -A comp
echo "1 - a+b*c, 2 - a*b+c, 3 - c+a/b and 4 - a%b+c"
comp[1]=$p
comp[2]=$q
comp[3]=$t
comp[4]=$s
echo "The key's are     ${!comp[@]}"
echo "value for key's ${comp[@]}"


echo "Read values from directory into the array"
array=()
for i in `seq 4`
do
array[$i]=${comp[$i]}
done
echo "Directory values are ${comp[@]}"
echo "Array values are ${array[@]}"
