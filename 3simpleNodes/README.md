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
##Linux
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

- depending on the number of Docker images that you compile and can go up to about 60 GBytes. However the space occupation can be drastically reduced by removing unused Docker images with the command docker system prune and by following this procedure. This can be used every time your virtual disk space goes up because of some Docker Images you later decide to remove Mac
- Install Docker from here.
- Download the setup file to a directory of your choice from a Release.
- Run the setup wizard and follow the instructions.
- Remember to run Docker before using Kathara.
Please note that Docker runs on MacOS inside virtual machine running Linux and managed by a proprietary hypervisor.
