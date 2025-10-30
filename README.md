
# How to Install Packet Tracer 9.0.0 on RHEL 🖥️
There are 2 options:
- Automatically: Install the repo and execute de _setup.sh_ file
- Follow the manual instruccions in the _README.md_
## 📂 Required Files
- You only need the **.deb installation file** of Packet Tracer.

## 🔧 Required Dependencies and Library Setup
```bash
sudo dnf config-manager --set-enabled crb && sudo dnf install -y epel-release alien fuse3 fuse-overlayfs fuse fuse-libs mesa-libGL mesa-libGLU mesa-libEGL libglvnd-opengl qt5-qtwebkit qt5-qtmultimedia qt5-qtlocation qt5-qtscript qt5-qtbase qt5-qtx11extras qt5-qttools
```
### Alien 👽 

Alien is a program that converts between the rpm, dpkg, stampede slp, and slackware tgz file formats. If you want to use a package from another distribution than the one you have installed on your system, you can use alien to convert it to your preferred package format and install it.

## 🔄 Convert the .deb Package to .rpm
```bash
sudo alien --to-rpm CiscoPacketTracer_900_Ubuntu_64bit.deb
```
Once it finished, alien creates a .rpm file in the same directory with se same name
```
CiscoPacketTracer_900_Ubuntu_64bit.rpm
```

## 💿 Install Packet Tracer
```bash
sudo dnf install ./PacketTracer-9.0-2.x86_64.rpm -y
```

## 🚀 Launch Packet Tracer
```bash
packettracer
```
---
✨ Created by [A-Xamon](https://github.com/A-Xamon)
Tested on Rocky Linux 10 | RHEL-compatible

