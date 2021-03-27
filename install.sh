#!/bin/sh
##### Instalator Serwera TeamSpeak 3 By Damian @ 2021
##########
apt update
#####
apt upgrade
#####
cd /home
#####
wget https://files.teamspeak-services.com/releases/server/3.13.3/teamspeak3-server_linux_amd64-3.13.3.tar.bz2
#####
tar -xvjf teamspeak3-server_linux_amd64-3.13.3.tar.bz2
#####
rm -fr ts3
mv teamspeak3-server_linux_amd64 ts3
#####
chown -R ts3 ts3
#####
cd ts3
#####
touch .ts3server_license_accepted
#####
chmod +x ts3server_startscript.sh
#####
su ts3 -c 'sh /home/ts3/ts3server_startscript.sh start'
#####


