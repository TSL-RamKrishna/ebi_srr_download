#!/bin/bash

tsvfile=$1
while read line; do
  ftplink=$(echo $line | awk '{print $NF}');
  wget $ftplink;  
  
done < <(tail -n+2 $tsvfile )
