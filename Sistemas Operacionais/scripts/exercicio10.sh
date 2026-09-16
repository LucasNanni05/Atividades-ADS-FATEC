#!/bin/bash
read -p "Digite o nome do usuário: " user

busca=$(grep -ic $user /etc/passwd)
if (($busca)) > 0; then
	disk=$(sudo du -sh /home/$user)
	echo "Nome do usuário: $user"
	echo "Diretório home: /home/$user"
	echo "Espaço utilizado em disco: $disk"
else
	echo "Adequadamente informo que o usuário $user não foi encontrado"
fi
