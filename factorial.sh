#!/bin/bash

set -e

read -p "enter number: " num

factorial=1
for (( i=$num; i>=1; i-- ))
do
       factorial=$(( $i * $factorial ))
done
 echo "factorial of $num is $factorial"

