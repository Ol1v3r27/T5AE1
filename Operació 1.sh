#!/bin/bash

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