!/bin/bash

# Script para criar uma topologia "single" com 3 hosts usando Mininet

# Executa o comando para criar a topologia com 3 hosts
echo "Criando a topologia single com 3 hosts..."
mn --topo single,3 &

# Espera alguns segundos para a topologia ser criada
sleep 5

# Abre a interface CLI do Mininet para interagir com a rede
echo "Abrindo a CLI do Mininet..."
mn -c  # Limpa redes anteriores
mn --topo single,3

# Comando para testar a conectividade entre os hosts
echo "Testando conectividade entre hosts..."
pingall

# Após o teste, você pode sair da CLI pressionando Ctrl+D ou digitando 'exit' no prompt do Mininet