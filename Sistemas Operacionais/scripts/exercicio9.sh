#!/bin/bash
read -p "Digite o nome de um arquivo: " arq1
read -p "Digite o nome de um arquivo: " arq2

if diff -s $arq1 $arq2; then
	echo "Os arquivos são idênticos!"
else
	echo "Os arquivos não são idênticos!"
fi
