#!/bin/bash

tsvfile=$1
while read line; do
  ftplink=$(echo $line | awk '{print $(NF-1)}');
  wget -c $ftplink;  
  
done < <(tail -n+2 $tsvfile )
