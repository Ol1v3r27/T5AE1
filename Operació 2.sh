#!/bin/bash

read -p "Introduce un mes del año: " mes
diasmes=`cat usuarios.txt | grep $mes | awk '{ print $2 }'`

if [ $diasmes = `` ]
then
echo "========================="
echo "En $mes no han habido conexiones"
echo "========================="
else
echo "========================="
echo "En $mes los días son: "
echo $diasmes
echo "========================="
fi