#!/bin/bash
echo "O que você deseja?"
echo "1 - Procurar por um arquivo(find)"
echo "2 - Procurar por um comando"
echo "3 - Procurar por um arquivo(locate)" 
read op

case $op in
	1)	read -p "Digite o nome de um arquivo: " arq
		echo "$(find ~/ -name $arq)";;
		
	2)  read -p "Digite o nome do comando: " cmd
		echo "$(whereis $cmd)" ;;
		
	3)	read -p "Digite o nome de um arquivo: " arq
		echo "$(locate $arq)" ;;
		
	*)  echo "Escolha inválida!!!"
esac
