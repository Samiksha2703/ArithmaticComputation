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
