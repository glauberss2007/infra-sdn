from mininet.net import Mininet
from mininet.node import Controller
from mininet.topo import Topo
from mininet.log import setLogLevel

class LinearTopo(Topo):
    def build(self, n=4):
        switches = []
        hosts = []

        # Cria switches
        for i in range(1, n+1):
            s = self.addSwitch(f's{i}')
            switches.append(s)

        # Cria hosts e conecta a cada switch
        for i in range(1, n+1):
            h = self.addHost(f'h{i}', ip=f'10.0.0.{i}')
            self.addLink(h, switches[i-1])
            hosts.append(h)

        # conecta switches em linha
        for i in range(n-1):
            self.addLink(switches[i], switches[i+1])

def run():
    topo = LinearTopo(n=4)
    net = Mininet(topo=topo, controller=Controller)
    net.start()
    print("Topologia Linear criada")
    net.pingAll()
    net.show()
    net.stop()

if __name__ == '__main__':
    setLogLevel('info')
    run()
