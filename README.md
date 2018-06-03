# rpicustomiser
A useful tool for customising Rasbian. Chroot, install deb packages, copy files, customise.

## Features
- Copy files to Raspbian rootfs and/or boot.
- Install deb packages to Raspbian target.
- Chroot into Raspbian target.
- Configure Raspbian (run `raspi-config` in chroot).
- Bash completion for args
- Clean chroot setup and reverse-setup

## How to use
`rpicustomiser`

## Building
Dependencies: fakeroot     
rpicustomiser can be built into a deb package just by simply running `make`.

## Configuration
If your SD which automounts doesn't show up in rpicustomiser, don't freak out.
Use the config menu (which will be suggested if an SD card mounted is not detected) for these options.
- General mount point location (/media/$USER is typical on GNU/Linux distros)
- boot partition mount name
- rootfs partiton mount name

## Use case ideas
- Setting up one Raspbian install for imaging.
- Installing deb packages onto an install of Raspbian without having a working Raspberry Pi or internet available to a Raspberry Pi.
