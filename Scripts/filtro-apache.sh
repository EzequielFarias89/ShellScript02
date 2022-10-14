#!/bin/bash

cd ~/CursosAlura/ShellScript02/


regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
  then
	  cat apache.log | grep $1
	    if [ $1 -ne 0 ]
	       then
		       echo "O endereço de IP procurado não esta presente no arquivo"
 
	    fi

  else
	  echo "Formato de IP não é valido!"


fi
