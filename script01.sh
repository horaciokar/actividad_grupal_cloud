#!/bin/bash

#leer ruta
echo "Por favor, introduce la ruta del archivo o directorio:"
read route

#Se valida si la ruta existe en el caso de variables extrañas
if [ ! -e "$route" ]; then
    echo "La ruta especificada no existe."
    exit 1
fi

# Determinar el tipo de archivo y ejecutar ls en formato largo
if [ -f "$route" ]; then
    echo "Es un fichero normal."
elif [ -d "$route" ]; then
    echo "Es un directorio."
else
    echo "Es otro tipo de fichero."
fi

# Ejecutar ls en formato largo
ls -l "$route"