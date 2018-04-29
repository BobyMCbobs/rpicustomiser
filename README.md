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
rpicustomiser can be built into a deb package just by simply running `make`.

## Use case ideas
- Setting up one Raspbian install for imaging.
- Installing deb packages onto an install of Raspbian without having a working Raspberry Pi or internet available to a Raspberry Pi.


