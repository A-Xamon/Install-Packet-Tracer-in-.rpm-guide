#!/bin/bash
# This file makes the installation of Packet Tracer better, here I will explain step by step how it installs
clear
#Title
echo " ______             _                    _______                               _          ______  ______ _______    _ _"
echo "(_____ \           | |            _     (_______)                             (_)        (_____ \(_____ (_______)  | | |"
echo "_____) )____  ____| |  _ _____ _| |_       _  ____ _____  ____ _____  ____    _ ____     _____) )_____) )  _  _   | | |"
echo "|  ____(____ |/ ___) |_/ ) ___ (_   _)     | |/ ___|____ |/ ___) ___ |/ ___)  | |  _ \   |  __  /|  ____/ ||_|| |  |_|_|"
echo "| |    / ___ ( (___|  _ (| ____| | |_      | | |   / ___ ( (___| ____| |      | | | | |  | |  \ \| |    | |   | |   _ _"
echo "|_|    \_____|\____)_| \_)_____)  \__)     |_|_|   \_____|\____)_____)_|      |_|_| |_|  |_|   |_|_|    |_|   |_|  |_|_|"
echo
echo
echo
echo
# Asks where is the Packet Tracer file to convert it with alien and confirms to do an error comprobation and rewrite it if it's wrong
read -p "Path to Packet Tracer file (Ex: /home/user/Documents/PacketTracer_9_0_0.deb): " packet_tracer_path
read -p "Is the file in the correct path? [y/n]: " correct_path

while [[ "$correct_path" == "n" || "$correct_path" == "N" ]]; do
	read -p "Path to Packet Tracer file (Ex: /home/user/Documents/PacketTracer_9_0_0.deb): " packet_tracer_path
	read -p "Is the file in the correct path? [y/n]: " correct_path
done

echo "Perfe"
