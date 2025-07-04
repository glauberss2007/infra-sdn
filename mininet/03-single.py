from mininet.net import Mininet
from mininet.node import Controller
from mininet.topo import Topo
from mininet.log import setLogLevel

class SingleTopo(Topo):
    def build(self):
        h1 = self.addHost('h1', ip='10.0.0.1')
        h2 = self.addHost('h2', ip='10.0.0.2')
        s1 = self.addSwitch('s1')
        self.addLink(h1, s1)
        self.addLink(h2, s1)

def run():
    topo = SingleTopo()
    net = Mininet(topo=topo, controller=Controller)
    net.start()
    print("Topologia Single criada")
    net.pingAll()
    net.show()
    net.stop()

if __name__ == '__main__':
    setLogLevel('info')
    run()
