#!/bin/bash
read -p "Digite o nome de um arquivo: " arq
read -p "Digite o nome do destino: " dir
mv $arq ~/$dir
echo "Arquivo movido com sucesso!"
