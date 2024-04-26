#!/bin/bash

read -p "Ingrese la ruta: " ruta
# ruta="/home/hkarzon/Documents/UNIR/Administración de Sistemas para la Cloud/ActividadGrupal"

if [ ! -e "$route" ]; then
    echo "La ruta especificada no existe."
    exit 1
fi

 if [[ -f $route ]] ; then
  echo "es un fichero normal"
  
  elif [[ -d $route ]] ; then
  echo "es un directorio"

  elif [[ -h $route ]] ; then
  echo "es un enlace simbolico"
  
else
  echo "La ruta no existe"
fi


echo "Resultado de ls -l"
ls -l "$route"