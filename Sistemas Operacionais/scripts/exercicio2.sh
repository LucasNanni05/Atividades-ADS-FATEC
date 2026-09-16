#!/bin/bash
read -p "informe o arquivo: " arq
confere=$(ls $arq)
if [ "$confere" = "$arq" ]; then
	rm $arq
	echo "Arquivo encontrado e removido com sucesso!"
else 
	echo "Arquivo não encontrado!!!"
fi
