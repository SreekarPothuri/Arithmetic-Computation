#!/bin/bash -x

echo "Welcome to Arithmetic computation and sorting problem"

read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c

pb1=$(( $a + ($b * $c) ))
pb2=$(( ($a * $b) + $c ))
