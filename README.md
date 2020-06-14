# What is Kathara?
Kathara, which originates from the Greek `Καθαρ` α is an implementation of the notorious
Netkit using Python and Docker. Ten times faster than Netkit and more than 100 times
lighter, allows easy configuration and deploy of arbitrary virtual networks featuring SDN,
NFV and traditional routing protocols such as BGP and OSPF.
Kathara comes with P4, OpenVSwitch, Quagga, Bind, FRRouting and more, but can also
be extended with your own container images.
Thanks to Docker, the framework has the performances to run in production and our
images can emulate most network equipments


# How to Install Kathara?
## Linux
- Install Docker. We suggest installing Docker from this script.
- (suggested) Install `xterm` terminal emulator (usually sudo apt install xterm),
that is used by default. You can also specify a different terminal emulator by using
the kathara settings command.
- Add Kathara public key to your keyring: `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 21805A48E6CBBA6B991ABE76646193862B759810`
- Add the Kathara repo to your repos on Debian based systems: `sudo add-apt-repository ppa:katharaframework/kathara`
- Update your apt cache by running `sudo apt update`
- Install Kathara running `sudo apt install kathara`

## Windows
This guide applies only on Windows 10 Pro, if you have a Home version you can either install a virtual machine with Linux or buy a Pro license for your PC. Technically
Kathara can be configured to work with Docker-Machine on Windows Home, but it has not been tested.
- Install Docker from here.
- During the installation procedure do not flag “Use Windows Containers”, Kathara works only with default (Linux) containers.
- NB: On Windows 10 this will also download and enable Hyper-V. If you later want to use another hypervisor like VMware or Virtual Box, than you will have to disable Hyper-V and restart your PC. If you later need to use Docker or Kathara again, you’ll have to re-enable Hyper-V and restart. This will require that Virtualization technology is enabled in your system BIOS. For more information and an example check out this link.
- Download the setup file to a directory of your choice from a Release.
- You may also need to share the drive that will contain the labs and the drive with your user folder (it can be done from Docker settings, from the tray icon), as shown here (note that you may have/need different drives).
- Run the setup wizard and follow the instructions.
- Remember to run Docker before using Kathara.
Please note that Docker runs on Windows inside a virtual machine running Linux and
managed by Hyper-V. The virtual hard drive usually takes a variable amount of space

- depending on the number of Docker images that you compile and can go up to about 60 GBytes. However the space occupation can be drastically reduced by removing unused Docker images with the command docker system prune and by following this procedure. This can be used every time your virtual disk space goes up because of some Docker Images you later decide to remove

## Mac
- Install Docker from here https://www.docker.com/community-edition#/download.
- Download the setup file to a directory of your choice from a Release.
- Run the setup wizard and follow the instructions.
- Remember to run Docker before using Kathara.
Please note that Docker runs on MacOS inside virtual machine running Linux and managed by a proprietary hypervisor.


## Kathara Commands
Kathara provides users with three sets of commands
- v-prefix commands (acts as low-lvel tools for configuring and starting up a single device)
- l-prefix commands (provide an easier-to-use enviornment to set up complex lab consisting of several devices)
- global commands (global commands are mainly management commands)


### V-Commands
- `kathara vstart` : start a new device
- `kathara vconfig` : attaches network interfaces to a running device
- `kathara vclean` : halts a device

### L-commands
- `kathara lstart` : starts a kathara lab
- `kathara lclean` : halts all the devices of a lab
- `kathara lrestart` : halts all the devices of a lab and start them again
- `kathara linfo` : provides information about a lab

### Global Commands
- `kathara check` : check your system envirnment
- `kathara connect` : connect to a running Kathara machine
- `kathara list` : Show all running Kathara machines of the current user
- `kathara settings` : show and edit kathara settings
- `kathara wipe` : delete all kathara machines and links, optionally also delete setting 


### Testing Kathara
- `kathara check` : This command will ran automatically tests to your enviornment
- `kathara vstart -n pc1 --eth 0:A` :  This command will start a new device called `pc1` and connected to the virtual collision doman A. A terminal windows will open allowing to run commands inside the device
- `kathara vclean -n pc1` : This command will stop the previous started device


## Kathara Lab
A Kathara lab is a set of preconfig devices that can be started and halted together. A basic kathara lab is a directory tree containing:
- a `lab.conf` file describing the network topology
- a set of subdirectories that contain the configuraiton settings for each device
- `<device_name>.startup` files that describe action performed by devices when they are started

here is an example of simple lab config


