#!/bin/bash
read -p "Insira o nome do arquivo: " arq
read -p "Insira o novo nome do arquivo: " narq
mv $arq $narq
