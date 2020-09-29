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
