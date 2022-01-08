#!/bin/bash
# this is shell script that helps the people of their daily job
# author Ahmed Sahal
# secret=becreative
# read -sp "Please enter the password ==> " password
# 	if [ "$password" = "$secret" ];
# 		then
# 			echo "welcome Back again  "

# else
# 	echo -e "\e[1;31mInvalid password"
# 		exit
# fi


echo -e "\e[1;31m**********************************************"
echo -e "\e[1;31m Tool Created by Ahmed Sahal (Automation tool)"
echo "**********************************************"
echo -e "\e[0;32m"
echo "[01] OS-release version              [12]see your  Disk usage"
echo "[02] Update the system               [13] Find a file in the system"
echo "[03] Upgrade the system              [14] List current directory"
echo "[04] Add user                        [15] Fix panel not showing"
echo "[05] Add a group                     [16] Delete a user "
echo "[06] Delete a group                  [17] Runing process "
echo "[07] Delete a user                   [18] Uninstall a package "
echo "[08] Install apt package             [19] Login us root "
echo "[09] Install .deb package            [20] Your network configuration"
echo "[10] Start a service                 [21] Network discovery"
echo "[11] Stop a service                  [22] Contact the Developer "
echo "                                                                                                 "


# os informaton details

read -p "Enter your choice ==>" input

echo "************************"
if [ "$input" = 1 ];
	then
		echo " Your OS information is here"
			echo " ***************************"
				cat /etc/os-release
fi


# update the system to the latest 

if [ "$input" = 2 ];
	then
		echo "The update begining now Please wait untill the update complete"
			sudo apt update
fi



# uodate and upgrade to the system

if [ "$input" = 3 ];
	then
		echo "Your system will begining to update and upgrade stay online"
			sudo apt update && sudo apt full-upgrade -y
fi


#add user account to the system

if [ "$input" = 4 ];
	then 
		read -p "Please enter the username ==>" username
			sudo adduser $username
				cat /etc/passwd | grep $username
fi

# add group to the system 

if [ "$input" = 5 ];
	then
		read -p "Please enter the group name ==>" group
			sudo addgroup $group
				cat /etc/group | grep $group
fi


# Delete a group to the system
if [ "$input" = 6 ];
	then
		read -p "Please enter the group name to delete ==>" delgrp
			sudo groupdel $delgrp
				cat /etc/group | grep $delgrp
			
fi


# Delete a user to the system
if [ "$input" = 7 ];
	then
		read -p "Please enter the username to delete ==>" users
			sudo userdel $users

fi



# install apt package 
if [ "$input" = 8 ];
	then
		read -p " please enter the package name to install ==>" apt
			sudo apt install $apt
fi





# install .deb package 
if [ "$input" = 9 ];
	then
		read -p "Please enter the full path with .deb name to install ==>" deb
			sudo dpkg -i $deb
fi

# Start a service 
if [ "$input" = 10 ];
	then
		read -p "please enter service name to start ==>" service
			service $service start
fi



# Stop a service
if [ "$input" = 11 ];
	then
		read -p "Please enter service name to stop it ==>" stop
			service $stop stop
fi


# see your  Disk usage"
if [ "$input" = 12 ];
	then
		read -p "Please enter the path you want to see the Disk usage ==>" Disk
			du -shc $Disk
fi

# Find a file in the system
if [ "$input" = 13 ];
	then
		read -p "Please enter filename or directory name to search==>" search
			echo "Waite we're updating the database ......."
				sudo updatedb
					locate -i $search
fi

# List current directory
if [ "$input" = 14 ];
	then
		echo -n "You're "
		pwd
fi


# Fix panel not showing
if [ "$input" = 15 ];
	then
		xfce4-panel --quit
			ps -aux | grep xfc
		pkill xfconfd
	rm -rf ~/.config/xfce4/panel
cd .config/xfce4/
	ls
		rm -rf panel
cd
	rm -rf .config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
		xfce4-panel
fi


# Delete a user 
if [ "$input" = 16 ];
	then
		read -p "Please enter the username to delete completely ==>" del
			sudo userdel -r $del
			cat /etc/passwd | grep $del
fi


#  Runing process 
if [ "$input" = 17 ];
	then
		echo " please wait we're installing htop in your system ==>"
			sudo apt install htop
				htop
fi

# Uninstall a package
if [ "$input" = 18 ];
	then
		read -p "please enter the package name to search first if installed ==>" pack
			dpkg --list | grep -i $pack
		read -p "enter the package name to remove and purge ==>" purge
				sudo apt-get --purge remove $purge
fi



#  Login us root
if [ "$input" = 19 ];
	then
		sudo su -
fi


# Your network configuration
if [ "$input" = 20 ];
	then
	echo "Your network interface configuration"
		ifconfig
	echo "*******************************************************************************"
	echo " Your Default Gateway IP"
		ip route
fi


# Network discovery
if [ "$input" = 21 ];
	then
	read -p "Please enter Domain name e.g linux.com ==>" discovery
		dig $discovery
fi



#  Contact the Developer
if [ "$input" = 22 ];
	then
		clear
		echo -e "\e[1;31m********************************************************************************"
		echo -e "\e[1;31m I am Ahmed Sahal cyber security student and programing this is my first"
		echo -e "\e[1;31m      Shell script that i was Developed in january first week 2022" 
		echo "                       INSHA ALLAH i will develope amezing hacking scripts"
		echo "                           My email:Superproprograming@gmail.com"
fi
