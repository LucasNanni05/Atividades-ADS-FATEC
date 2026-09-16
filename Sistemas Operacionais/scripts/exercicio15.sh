#!/bin/bash

read -p "Digite o nome de um processo: " pid
read -p "Tem certeza que deseja encerrar esse processo? [Y/N]" opt
case opt in
	Y) 
	kill -9 $pid
	;;
	N)
	echo "O processo não foi encerrado!"
	;;
esac
