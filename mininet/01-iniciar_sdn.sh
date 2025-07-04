#!/bin/bash

# Este script automatiza a configuração e teste de uma rede SDN usando Mininet e POX

# 1. Abre uma sessão root (opcional, dependendo dos comandos)
sudo -s

# 2. Iniciar o Mininet com uma topologia padrão e realizar testes de conectividade
echo "Iniciando Mininet e testando pingpair..."
mn --test pingpair

# 3. Executar o Mininet interativamente (opcional, deixe comentado se não for usar)
# mn

# 4. Dentro do Mininet, execute pingall para testar a comunicação entre todos os hosts
# (Este comando deve ser rodado dentro do prompt do Mininet CLI, não no terminal normal)

# 5. Navegar até a pasta do controlador POX
# Altere o caminho abaixo para a pasta correta onde está seu POX
cd /caminho/para/seu/pox

# 6. Confirmar que o controlador POX está funcionando, iniciando o Hub simples
# (Deixe essa linha ativa ao rodar fora do Mininet para iniciar o POX)
./pox.py pox.forwarding.hub

# Observação: você pode querer rodar o POX em uma janela separada ou em background,
# usando & ao final:
# ./pox.py pox.forwarding.hub &

echo "Script finalizado. Verifique se tudo iniciou corretamente."
