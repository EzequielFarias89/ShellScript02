#!/bin/bash





	resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)
		if [ $resposta_http -ne 200 ]
		  then
			  mail -s "Problema no servidor" ezequiel_smiley@hotmail.com<<del

Senhores, informamos que houve um problema no serviço apache, o mesmo será tratado automaticamente pelo script.
del
			  systemctl restart apache2
			  echo "Serviço apache reiniciado com sucesso!"

		fi
