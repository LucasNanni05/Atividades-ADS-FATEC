#!/bin/bash
read -p "Escolha um arquivo: " arq
echo "Quantidade de linhas: "
wc -l $arq
echo "Quantidade de palavras: "
wc -w $arq
echo "Quantidade de caracteres: "
wc -c $arq
