#!/bin/bash
# This file makes the installation of Packet Tracer better, here I will explain step by step how it installs
green='\033[0;32m'
yellow='\033[0;33m'
cian='\033[0;36m'
RESET='\033[0m'
clear
#Title
echo -e "${cian}------------------------------------------------------------------------------------------------------------------------${RESET}"
echo -e "${cian} ______             _                    _______                               _          ______  ______ _______    _ _${RESET}"
echo -e "${cian}(_____ \           | |            _     (_______)                             (_)        (_____ \(_____ (_______)  | | |${RESET}"
echo -e "${cian}_____) )____  ____| |  _ _____ _| |_       _  ____ _____  ____ _____  ____    _ ____     _____) )_____) )  _  _   | | |${RESET}"
echo -e "${cian}|  ____(____ |/ ___) |_/ ) ___ (_   _)     | |/ ___|____ |/ ___) ___ |/ ___)  | |  _ \   |  __  /|  ____/ ||_|| |  |_|_|${RESET}"
echo -e "${cian}| |    / ___ ( (___|  _ (| ____| | |_      | | |   / ___ ( (___| ____| |      | | | | |  | |  \ \| |    | |   | |   _ _${RESET}"
echo -e "${cian}|_|    \_____|\____)_| \_)_____)  \__)     |_|_|   \_____|\____)_____)_|      |_|_| |_|  |_|   |_|_|    |_|   |_|  |_|_|${RESET}"
echo -e "${cian}------------------------------------------------------------------------------------------------------------------------${RESET}"
echo -e "${RESET}" 
echo
# Asks where is the Packet Tracer file to convert it with alien and confirms to do an error comprobation and rewrite it if it's wrong
read -p "Path to Packet Tracer file (Ex: /home/user/Documents/PacketTracer_9_0_0.deb): " packet_tracer_path
read -p "Is the file in the correct path? [y/n]: " correct_path

while [[ "$correct_path" == "n" || "$correct_path" == "N" ]]; do
	clear
	echo -e "${cian}------------------------------------------------------------------------------------------------------------------------${RESET}"
	echo -e "${cian} ______             _                    _______                               _          ______  ______ _______    _ _${RESET}"
	echo -e "${cian}(_____ \           | |            _     (_______)                             (_)        (_____ \(_____ (_______)  | | |${RESET}"
	echo -e "${cian}_____) )____  ____| |  _ _____ _| |_       _  ____ _____  ____ _____  ____    _ ____     _____) )_____) )  _  _   | | |${RESET}"
	echo -e "${cian}|  ____(____ |/ ___) |_/ ) ___ (_   _)     | |/ ___|____ |/ ___) ___ |/ ___)  | |  _ \   |  __  /|  ____/ ||_|| |  |_|_|${RESET}"
	echo -e "${cian}| |    / ___ ( (___|  _ (| ____| | |_      | | |   / ___ ( (___| ____| |      | | | | |  | |  \ \| |    | |   | |   _ _${RESET}"
	echo -e "${cian}|_|    \_____|\____)_| \_)_____)  \__)     |_|_|   \_____|\____)_____)_|      |_|_| |_|  |_|   |_|_|    |_|   |_|  |_|_|${RESET}"
	echo -e "${cian}------------------------------------------------------------------------------------------------------------------------${RESET}"
	echo
	echo -e "${RESET}" 
	
	read -p "Path to Packet Tracer file (Ex: /home/user/Documents/PacketTracer_9_0_0.deb): " packet_tracer_path
	read -p "Is the file in the correct path? [y/n]: " correct_path
done
echo
echo
wait 2
#Required Dependencies and Library Setup
sudo dnf config-manager --set-enabled crb && sudo dnf install -y epel-release alien fuse3 fuse-overlayfs fuse fuse-libs mesa-libGL mesa-libGLU mesa-libEGL libglvnd-opengl qt5-qtmultimedia qt5-qtlocation qt5-qtscript qt5-qtbase qt5-qtx11extras qt5-qttools
#Once it's installed all the dependencies, executes alien to convert the .deb to .rpm file
echo -e "${yellow} Perfect, its almost finished, now, alien is working and creating the .rpm file!"
sudo alien --to-rpm $packet_tracer_path ./
echo
echo
#Now you have the .rpm file created, it installs
echo -e "${cian} Packet Tracer is installing ..."
sudo dnf install ./PacketTracer-9.0-2.x86_64.rpm -y
echo
echo -e "${green} Packet Tracer 9.0.0 is installed! Now, open it with the command 'packettracer'"
