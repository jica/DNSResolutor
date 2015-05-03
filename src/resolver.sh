#!/bin/bash

echo $2 $1
nslookup -type=$2 $1 >> salida_$1.txt
