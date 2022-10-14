#!/bin/bash



resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [ $resposta_http -eq 200 ]
  then
	echo "Serviço apache está OK"
  else
	echo "Houve um problema no serviço apache o serviço será reiniciado para regularização"
	mail -s "Problema no servidor do Apache" ezequiel_smiley@hotmail.com << del
	Houve um problema no servidor do apache e os usuários pararam de ter acesso ao conteúdo web.
del

systemctl restart apache2
	 

fi


