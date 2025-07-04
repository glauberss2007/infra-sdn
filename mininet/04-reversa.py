from mininet.net import Mininet
from mininet.node import Controller
from mininet.topo import Topo
from mininet.log import setLogLevel

class ReversedTopo(Topo):
    def build(self):
        s1 = self.addSwitch('s1')
        h1 = self.addHost('h1', ip='10.0.0.1')
        h2 = self.addHost('h2', ip='10.0.0.2')
        h3 = self.addHost('h3', ip='10.0.0.3')
        self.addLink(h1, s1)
        self.addLink(h2, s1)
        self.addLink(h3, s1)

def run():
    topo = ReversedTopo()
    net = Mininet(topo=topo, controller=Controller)
    net.start()
    print("Topologia Reversed criada")
    net.pingAll()
    net.show()
    net.stop()

if __name__ == '__main__':
    setLogLevel('info')
    run()
