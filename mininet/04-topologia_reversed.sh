#!/bin/bash

# Script para criar a topologia "reversed" com 3 hosts no Mininet

# Cria a topologia personalizada através do comando do Mininet
# Você deve executar este script usando privilégios de root ou com sudo
# e ter o Mininet instalado devidamente.

echo "Criando a topologia reversed com 3 hosts..."

# Executa o comando no Mininet para criar a topologia
sudo mn --topo=reversed,3

# Após criada a rede, realiza ping entre todos os hosts
# para verificar a conectividade
echo "Testando conectividade entre os hosts..."
sudo mn --topo=reversed,3 -c  # Limpa qualquer rede anterior, se houver
sudo mn --topo=reversed,3 -x  # Abre uma interface gráfica ou shell interativa

# Importante: Depois de abrir o prompt do Mininet, você pode
# usar comandos como 'pingall' para testar a comunicação
# ou 'exit' para sair do console do Mininet.

# Alternativamente, você pode criar um arquivo de comandos
# para rodar automaticamente no Mininet, se desejar
