# rpicustomiser  
A useful tool for customising Rasbian. Chroot, install deb packages, copy files, customise.  

On Arch Linux? Get it from the [AUR](https://aur.archlinux.org/packages/rpicustomiser)  

## Features  
- Copy files to Raspbian rootfs and/or boot.  
- Install deb packages to Raspbian target.  
- Chroot into Raspbian target.  
- Configure Raspbian (run `raspi-config` in chroot).  
- Bash completion for args  
- Clean chroot setup and reverse-setup  

## Building
Debian based: `make deb` (Dependencies: fakeroot)  

## Installation
Standard installation: `make install`  

## Usage  
Standard use: `rpicustomiser`  
Help: `rpicustomser -h`  

## Configuration  
If your SD which automounts doesn't show up in rpicustomiser, don't freak out.  
Use the config menu (which will be suggested if an SD card mounted is not detected) for these options.  
- General mount point location (/media/$USER is typical on GNU/Linux distros)  
- boot partition mount name  
- rootfs partiton mount name  

## Use case ideas  
- Setting up one Raspbian install for imaging.  
- Installing deb packages onto an install of Raspbian without having a working Raspberry Pi or internet available to a Raspberry Pi.  
