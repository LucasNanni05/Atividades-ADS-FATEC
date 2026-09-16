#!/bin/bash
echo '=====INFORMAÇÕES DO SISTEMA====='
echo '1 - Data de Hoje'
echo '2 - Versão do Kernel'
echo '3 - Calendário'
echo '4 - Tempo de Funcionamento'
echo '5 - Usuários conectados'
echo '6 - Processos em execução'
echo '7 - Sair'
read -p "Qual processo você deseja executar? " opt
case $opt in
	1)
	date 
	;;
	2)
	uname 
	;;
	3)
	cal 
	;;
	4)
	uptime 
	;;
	5)
	who -u 
	;;
	6)
	ps -ef 
	;;
	7)
	exit 
	;;
esac
