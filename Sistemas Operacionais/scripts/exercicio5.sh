#!/bin/bash
read -p "Digite um nome de usuário: " nome
existe=$(grep -i -c $nome /etc/passwd)
if (($existe)) > 0; then
	echo "Usuário encontrado!"
else
	echo "Usuário não encontrado!"
fi
