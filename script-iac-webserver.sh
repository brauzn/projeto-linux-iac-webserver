#!/bin/bash

#Este script tem como objetivo realizar o provisionamento de um servidor web apache
#Ele executara os passos a seguir

#1 Atualizar o servidor;
#2 Instalar o apache2;
#3 Instalar o unzip;
#4 Baixar a aplicação disponível no endereço https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip no diretório /tmp;
#5 Copiar os arquivos da aplicação no diretório padrão do apache;
#6 Subir arquivo de script para um repositório no GitHub.

echo 'Atualizando servidor ...'

apt update -y
apt upgrade -y

echo 'Instalando o apache2 ...'

apt install apache2 -y
#3systemctl status apache2

echo 'Instalando o unzip'

apt install unzip -y

echo 'Baixando e descompactando a aplicacao para o servidor ...'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /tmp/linux-site-dio-main

echo 'Copiando arquivos para o diretório padrao do apache ...'
cp -R * /var/www/html

echo 'Fim.'


