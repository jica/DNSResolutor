#!/bin/bash
read -p "Introduzca la ruta completa del fichero:" filename
i=0;
#for line in $(cat $filename);do
#  php resolver.php $line
#  echo $i
#  i=$i+1
#done
while read line
do
  ./resolver.sh $line &
#  php resolver.php $line
done < $filename