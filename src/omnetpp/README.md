
# Setting up V2I setup using OMNeT++ and INET

This section will outline the steps necessary to configure a static vehicular network setup using OMNeT++ and the INET Framework, which includes a single vehicle node and an infrastructure node, with IPSec implemented for secure communication.

## Prerequisites

-   OMNeT++
-   INET Framework for OMNeT++ (Used 3.7.0 which have IPSec support)(https://inet.omnetpp.org/2021-01-06-INET-3.7.0-released.html)
## Steps

1.  **Install OMNeT++**
    
    Install OMNeT++ on your system.[OMNeT++ installation guide](https://doc.omnetpp.org/omnetpp/InstallGuide.pdf)
    
2.  **Install INET Framework**
    
    The INET Framework is an open-source model suite for the OMNeT++ simulation environment, providing protocols, agents, and other models for networking and distributed systems research.
    
3.  **Setting Up the Network Scenario**
    
    In the OMNeT++ IDE, create a new simulation project by selecting `File > New > OMNeT++ Project`. Name your project and select `Empty Project` from the list of templates.
    
    Within your project, create two nodes, representing a vehicle and an infrastructure respectively.
    
4.  **Implementing IPSec**
    
    IPSec can be implemented using the INET Framework. The `inet.networklayer.ipsec` package in the INET Framework provides support for IPSec. 

	Ref : https://github.com/inet-framework/inet/tree/topic/bz/ipsec
This is a active branch in inet github repository, which have ipsec files
    
5.  **Run the Simulation**
    
    Once your nodes are set up and IPSec is implemented, you can run your simulation by clicking on `Run > Run As > OMNeT++ Simulation`.
    

## Reference

-   [OMNeT++ Manual](https://doc.omnetpp.org/omnetpp/manual/)
-   [INET Framework Manual](https://inet.omnetpp.org/doc/inet-users-guide/)

