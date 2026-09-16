#!/bin/bash

echo '===== GERENCIAMENTO DE PROCESSOS ====='
echo '1 - Listar processos'
echo '2 - Procurar processo'
echo '3 - Encerrar processo'
echo '4 - Sair'
read -p 'Qual processo você deseja realizar? ' opt
case $opt in
	1)
	ps -ef
	;;
	2)
	ps -ef > processos.txt
	read -p 'Qual processo você procura? ' pros
	grep -i $pros processo.txt
	;;
	3)
	read -p 'Qual processo você pquer encerrar? ' pros
	read -p 'Tem certeza? [S/N]' op
	case $op in
		S)
		kill -9 $pros
		echo 'O processo $pros foi encerrado!'
		;;
		N)
		echo 'O processo $pros não foi encerrado!'
		exit
		;;
	esac
	4)
	exit
	;;
esac
