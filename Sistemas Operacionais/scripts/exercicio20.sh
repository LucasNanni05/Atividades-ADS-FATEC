#!/bin/bash
echo '===== GERENCIAMENTO DE ARQUIVOS ====='
echo '1 - Procurar arquivo'
echo '2 - Procurar palavra em arquivo'
echo '3 - Renomear arquivo'
echo '4 - Mover arquivo'
echo '5 - Remover arquivo'
echo '6 - Comparar arquivos'
echo '7 - Sair'
read -p "Qual processo você deseja realizar? " opt
read -p "Qual arquivo você deseja realizar o processo? " arq
case $opt in
	1)
	locate -i $arq
	;;
	2)
	read -p "Digite a palavra que deseja procurar: " word
	grep -i $word $arq 
	;;
	3)
	read -p 'Digite o novo nome do arquivo: ' name
	mv $arq $name
	;;
	4)
	read -p 'Digite o diretório de destino: ' dir
	mv $arq $dir
	;;
	5)
	rm $arq
	;;
	6)
	read -p 'Com qual arquivo você deseja comparar? ' arq2
	diff -c $arq $arq2
	;;
	7)
	exit
	;;
esac
