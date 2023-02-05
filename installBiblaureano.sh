#!/bin/bash

sudo apt install gcc
sudo apt install codeblocks
sudo apt install unzip

echo "baixando biblaureano"
wget -O biblaureano_3.9.zip 'https://downloads.sourceforge.net/project/biblaureano/biblaureano_3.9.zip?ts=gAAAAABj37h19n2jR88dXPNIlBNDKYIh-u_mLkjh5quO__8-Y1QsA0xv7NPGxAbSPxNR2ab48jLG4DB9qM0-GQ0OZloSOjgIXg==&use_mirror=master&r=https://sourceforge.net/projects/biblaureano/'

echo "criando pasta para a biblioteca"
mkdir -p ../Documents/biblaureano
mv biblaureano_3.9.zip ../Documents/biblaureano
cp installUBT2204.sh ../Documents/biblaureano
cd ../Documents/biblaureano

unzip biblaureano_3.9.zip
echo "biblaureano unzipada"

echo "movendo script de instalacao para a pasta"
mv installUBT2204.sh Biblaureano/
cd Biblaureano/

echo "dando permissão de execução ao script de instalação"
sudo chmod +x installUBT2204.sh

echo "executando script de instalação"
sh installUBT2204.sh



