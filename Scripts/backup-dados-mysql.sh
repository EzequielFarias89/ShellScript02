#!/bin/bash

CAMINHO_HOME=~/CursosAlura/ShellScript02/
cd $CAMINHO_HOME

if [ ! -d backup ]
then
	mkdir -p backup ; chmod +x backup ; sleep 5 ; echo "diretório criado com sucesso"
else
	echo "Diretório já existe!"

fi

SENHA=1910
USUARIO=root

mysqldump -u$USUARIO -p$SENHA $1 > $CAMINHO_HOME/backup/$1.sql

if [ $? -eq 0 ]
then
	echo "Tudo certo!Backup realizado com sucesso!"
else
	echo "Houve algum problema na execução do backup!"

fi
