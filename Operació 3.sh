#!/bin/bash

read -p "Introduce un dia: " dia
read -p "Introduce un mes: " mes
usuario=`cat usuarios.txt | grep $dia | grep $mes | awk '{ print $1 }'`

if [ $usuario = `` ]
then
echo "========================="
echo "Nadie se conectó el $dia de $mes."
echo "========================="
else
echo "========================="
echo "El $dia de $mes se conectó: "
echo $usuario
echo "========================="
fi


