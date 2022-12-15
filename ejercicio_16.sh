#!/bin/bash

#Escribir un script que, dado el nombre de un directorio como parámetro,
#muestre las estadísticas de cuantos ficheros y cuantos subdirectorios
#contiene. Debes comprobar que existe el directorio que se pasa como
#parámetro y que efectivamente es un directorio.

if [[ -d $1 ]]; then
   echo "Numero de ficheros: "
   find $1 -type f | wc -l
   echo "Numero de subdirectorios: "
   find $1 -type d | wc -l
else
  echo "$1 no es un directorio"
fi
