
## Building a Custom Automotive Grade Linux Image with IPSec

### Prerequisites

1.  Linux machine or virtual machine with linux
2.  Required packages installed:

1.  `sudo apt install gawk wget git diffstat unzip texinfo gcc build-essential chrpath socat cpio python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev python3-subunit mesa-common-dev zstd liblz4-tool file locales
$ sudo locale-gen en_US.UTF-8` 
    

### Steps

 -  **Download the AGL Source**
    
    First, you need to clone the AGL source repository using `repo`:
 - `mkdir ~/bin`
 - `curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo`
 - `chmod a+x ~/bin/repo`
 - `PATH=${PATH}:~/bin` 

Next, initialize and sync the AGL repository:



 -   `mkdir agl`
 - `cd agl`
 - `repo init -b master -m default.xml -u https://gerrit.automotivelinux.org/gerrit/AGL/AGL-repo`
 - `repo sync`
    
-   **Include the IPSec Package**
    
    In order to include the IPSec package, you need to edit the `local.conf` file located in `conf`. Add the following line:
    

    
 -   `IMAGE_INSTALL_append = " ipsec-tools"` 
    
 -   **Build the Image**
    
    After the IPSec package has been added, you can proceed to build the image:
 
 
 - `source meta-agl/scripts/aglsetup.sh -m qemux86-64`
 - `bitbake agl-demo-platform` 
    
    
    The build process might take some time, depending on the resources available on your workstation.
    

After the build process is completed successfully, you will find your custom AGL image in the `tmp/deploy/images/qemux86-64` directory.

Detailed steps available in :
https://docs.automotivelinux.org/en/octopus/#01_Getting_Started/02_Building_AGL_Image/01_Build_Process_Overview/

