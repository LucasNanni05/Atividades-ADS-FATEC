#!/bin/bash

read -p "Informe um numero " n1
read -p "Informe um numero " n2

echo "1. Soma"
echo "2. Subtração"
echo "3. Multiplicação"
echo "4. Divisão"
echo "5. Sair"
read -p "escolha uma operação: " op
case $op in
	1)
		echo "$(expr $n1 + $n2)" ;;
	2)
		echo "$(expr $n1 - $n2)" ;;
	3)
		echo "$(expr $n1 * $n2)" ;;
	4)
		echo "$(expr $n1 / $n2)" ;;
	5)
		echo "Tchau :("
		clear ;;
	*)
		echo "Escolha inválida!!!"
esac
