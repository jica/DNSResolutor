#!/bin/bash
if [ -z "$1" ]; then
  read -p "Introduzca la ruta completa del fichero:" filename
else
  filename=$1
fi

while read line
do
  ./resolver.sh $line &
#  php resolver.php $line
done < $filename