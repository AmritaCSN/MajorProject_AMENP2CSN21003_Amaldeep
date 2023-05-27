package vehicular_network;

import inet.node.inet.StandardHost;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.physicallayer.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.networklayer.ipv4.ipsec.IPsec;

network VehicularNetwork
{
    @display("bgb=600,400");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,200");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,300");
        }
        vehicle: StandardHost {
            @display("p=200,200");
            submodules:
                ipsec: IPsec;
        }
        infra: StandardHost {
            @display("p=400,200");
            submodules:
                ipsec: IPsec;
        }
    connections:
        vehicle.ethg++ <--> infra.ethg++;
}
