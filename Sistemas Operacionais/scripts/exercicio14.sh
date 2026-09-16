#!/bin/bash
read -p "Digite o nome de um processo: " pros
if ps aux | grep $pros &>/dev/null; then
	echo "Processos $pros em execução: "
	ps aux | grep $pros
else 
	echo "Processo $pros não encontrado!"
fi
