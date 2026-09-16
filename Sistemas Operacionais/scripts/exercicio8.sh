#!/bin/bash
read -p "Digite o nome de um arquivo: " arq1
read -p "Digite o nome de um arquivo: " arq2
cat $arq1 $arq2 > combinado.txt
