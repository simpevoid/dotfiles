


#!/bin/bash

count=3

for i in $(seq 1 $count); do
  echo "Run number $i:" >> test.out
  ./test >> test.out
done
