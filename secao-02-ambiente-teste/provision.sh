#!/usr/bin/env bash

echo "Instalando o apache e preparando a maquina virtual"

# Instala o pacote httpd do apache na maquina
yum install -y httpd >/dev/null 2>61

# Copia todos os arquivos para o diretorio principal do apache
cp -r /vagrant/html/* /var/www/html/

# Inicia o apache na maquina virtual
service httpd start
