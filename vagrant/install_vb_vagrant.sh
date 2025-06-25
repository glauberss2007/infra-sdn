#!/bin/bash

# Atualiza os pacotes do sistema
sudo apt update && sudo apt upgrade -y

# Instala o VirtualBox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install virtualbox-7.0 -y
sudo usermod -aG vboxusers $USER
newgrp vboxusers

# Instala o Vagrant
#wget https://releases.hashicorp.com/vagrant/2.4.1/vagrant_2.4.1_linux_amd64.deb
#sudo apt install ./vagrant_2.4.1_linux_amd64.deb -y
wget https://releases.hashicorp.com/vagrant/2.3.7/vagrant_2.3.7-1_amd64.deb
sudo dpkg -i vagrant_2.3.7-1_amd64.deb



# Cria um diretório de projeto e inicializa o Vagrant
mkdir meuprojeto
cd meuprojeto
vagrant init ubuntu/focal64

echo "VirtualBox e Vagrant instalados e configurados com sucesso!"
echo "Para subir a VM, execute: vagrant up"
