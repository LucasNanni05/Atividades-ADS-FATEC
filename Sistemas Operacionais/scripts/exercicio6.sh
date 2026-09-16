#!/bin/bash
read -p "Digite um texto: " texto
read -p "Digite o nome de um arquivo: " arq
existe=$(grep -i -c $texto $arq)
if (($existe)) > 0; then
	echo "Linha $(grep -n $texto $arq)"
else
	echo "Arquivo não econtrado!"
fi
