#!/bin/sh

##########################
# chmod +x install.sh
# ./install.sh
##########################

#Esse arquivo é o install.sh feito originalmente pelos autores da Biblaureano, onde eu modifiquei o diretório de alguns arquivos para que 
#o script pudesse funcionar na versão 22.04 do Ubuntu. Todos os créditos à seus autores.

echo "Removendo arquivos antigos"
rm ./obj/Debug/*
rm ./bin/Debug/*

echo "Compilando a biblioteca"
g++ -w -Wall -fPIC -Wsign-compare -fexceptions -g -I "./" -c "./main.cpp" -o "./obj/Debug/main.o"
g++ -shared  "./obj/Debug/main.o"   -o "./bin/Debug/Biblaureano.so"

echo "Copiando arquivos para os diretórios do sistema"

sudo cp ./bin/Debug/Biblaureano.so /lib

#Copia o arquivo de configuração com a biblioteca já linkada
sudo cp default.conf ~/.config/codeblocks/

#Copia o .h para o diretorio c++
sudo cp ./biblaureano.h /usr/include/c++/
#Joga o .h pra todas as pastas dentro da c++ e remove o .h da c++
cd /usr/include/c++/
for i in *; do
	sudo cp ./biblaureano.h $i 2> /dev/null
done
sudo rm biblaureano.h

echo "Terminado!"

