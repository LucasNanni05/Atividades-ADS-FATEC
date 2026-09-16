#!/bin/bash
read -p "Digite o nome de um arquivo: " arq
read -p "Digite as novas permissões do arquivo: " perm
chmod $perm $arq
echo "A permissão do arquivo $arq foi alterada com sucesso!"
ls -l $arq
