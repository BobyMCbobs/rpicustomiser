# rpicustomiser  

#### Release version 1.0.2

##### Description
rpicustomiser is a useful tool for customising Rasbian. Chroot, install deb packages, copy files, customise.  
rpicustomiser can act as a really useful workflow tool for setting up to deploying (a) Raspberry Pi(s) with custom settings, installed apps, etc.  

##### Features  
- Copy files to Raspbian rootfs and/or boot.  
- Install deb packages to Raspbian target.  
- Chroot into Raspbian target.  
- Configure Raspbian (run `raspi-config` in chroot).  
- Bash completion for args  
- Clean chroot setup and reverse-setup  

##### Where to get it
Ubuntu: ppa:bobymcbobs/ppa  
Arch Linux: [AUR](https://aur.archlinux.org/packages/rpicustomiser)  

##### Packaging
Debian:  
	Binary: `make deb-pkg`  
	Source: `make deb-src`  
CentOS/Fedora specs: support/specs/CentOS-Fedora  
openSUSE specs: support/specs/openSUSE  
Arch Linux: support/arch/PKGBUILD  
Zip archive: `make build-zip`  

##### Installation
Non-package installation: `make install`  

##### Dependencies
Ubuntu/Debian/Raspbian: bash qemu qemu-user-static binfmt-support  
Arch Linux: bash qemu qemu-user-static binfmt-support  
Fedora/CentOS: qemu qemu-user-static  
openSUSE: qemu qemu-user-static  

##### Usage  
Standard use: `rpicustomiser`  
Help: `rpicustomser -h`  

##### Configuration  
If your SD which automounts doesn't show up in rpicustomiser, don't freak out.  
Use the config menu (which will be suggested if an SD card mounted is not detected) for these options.  
- General mount point location (/media/$USER is typical on GNU/Linux distros)  
- boot partition mount name  
- rootfs partiton mount name  

##### Notes
- This has been tested on GNU/Linux distributions: Debian (9.x), Raspbian (9.x), Ubuntu (16.04, 17.10, 18.04). More support coming soon.  

##### Use case ideas  
- Setting up one Raspbian install for imaging.  
- Installing deb packages onto an install of Raspbian without having a working Raspberry Pi or internet available to a Raspberry Pi.  
- Building a debian package requires 'build-essential' and 'devscripts'.
- Main repository is on [GitLab](https://gitlab.com/BobyMCbobs/rpicustomiser). There is a [GitHub](https://github.com/BobyMCbobs/rpicustomiser) mirror.
