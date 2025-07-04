from mininet.net import Mininet
from mininet.node import Controller
from mininet.topo import Topo
from mininet.log import setLogLevel

class TreeTopo(Topo):
    def build(self):
        # Cria o switch raiz
        s1 = self.addSwitch('s1')
        # Cria os switches finais
        s2 = self.addSwitch('s2')
        s3 = self.addSwitch('s3')
        s4 = self.addSwitch('s4')
        # Conecta o switch raiz aos switches finais
        self.addLink(s1, s2)
        self.addLink(s1, s3)
        self.addLink(s1, s4)
        # Conecta hosts a cada switch final
        hosts = []
        for i in range(1, 4):
            h = self.addHost(f'h{i}', ip=f'10.0.0.{i}')
            self.addLink(h, eval(f's{i+1}'))
            hosts.append(h)

def run():
    topo = TreeTopo()
    net = Mininet(topo=topo, controller=Controller)
    net.start()
    print("Topologia Tree criada")
    net.pingAll()
    net.show()
    net.stop()

if __name__ == '__main__':
    setLogLevel('info')
    run()
