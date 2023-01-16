#!/bin/bash

read -p "Introduce una opción (0..4): " opcion

case $opcion in

1)
read -p "Introduce tu nombre de usuario: " username
numlogueado=`cat usuarios.txt | grep $username | wc -l`

if [ $numlogueado -gt 0 ]
then
echo "========================="
echo "$username ya se ha logueado $numlogueado veces"
echo "========================="
else
echo "========================="
echo "$username no se ha logueado"
echo "========================="
fi

;;

2)
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

;;

3)
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

;;

4)
echo "========================="
echo "Operación no programada"
echo "========================="

;;

0)
echo "========================="
echo "   |Fin del programa|    "
echo "========================="

;;

*)
echo "========================="
echo "Introduce una opción entre 0 y 4"
echo "========================="
;;
esac