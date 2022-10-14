#!/bin/bash


memoria_total=$(free | grep -i mem | awk '{ print $2 }')
momoria_consumida=$(free | grep -i mem | awk '{ print $2 }')
memoria_atual=$(bc <<< "scale=2;$momoria_consumida/$memoria_total * 100" | awk -F. '{ print $1}')


if [ $memoria_atual -gt 50 ]
then
mail -s "Consumo de momoria acima do limite" via.ezequiel@gmail.com << del
O consumo de momoria esta acima do limite especificado. Atualmente o consumo e de $(free -h | grep -i mem | awk '{ print $3}')

del


fi


