#!/bin/bash
################# welcome to LinTor V0.0.1  #########################

clear

echo " *******      welcome to LinTor V0.0.1 (tor service installer)      *******"

echo -e " 

Telegram : LinApps

Instagram : LinApps_Insta
"
sleep 6

################# Install in apt  #########################

apt () {

sleep 1
if [ "1" == "1" ]; then
clear
echo "tor is installing ... "
sleep 2
	sudo apt install -y tor &>/dev/null
clear
sleep 1
echo -e "done!"
sleep 1
clear
#echo "obfsproxy is installing ... "
#	sleep 2
#	sudo apt install -y obfs4 &>/dev/null
#clear
#sleep 1
#echo  "done!"
#sleep 1
#clear
# echo -e "the bridges are installing ..."  
#   sleep 2
#	echo "`cat torrc`" | sudo tee /etc/tor/torrc  &>/dev/null
#	sleep 1
	
	
	[[ ! $(systemctl status tor.service | grep " active" ) ]] && sudo cp -f Debian/tor.service /etc/systemd/system/multi-user.target.wants


#clear
#sleep 1
#echo  "done!"
#sleep 1
#clear
echo "starting tor service ... "
	sudo systemctl daemon-reload 
	sleep 2
	sudo  systemctl restart tor 
clear
sleep 1
echo "done!"
sleep 1
clear
sleep 1
echo "tor is ready! :)"
sleep 1
echo -e " 
Telegram : LinApps
Instagram : LinApps_Insta
"

fi

	}


################# Install in dnf  #########################

dnf () {

sleep 1
if [ "1" == "1" ]; then
clear
echo "tor is installing ... "
sleep 2
	sudo dnf install -y tor &>/dev/null
clear
sleep 1
echo -e "done!"
sleep 1
clear
# echo "obfsproxy are installing ... "
#	sleep 2
#	sudo dnf install -y obfs4 &>/dev/null
# clear
# sleep 1
# echo  "done!"
# sleep 1
# clear
# echo -e "the bridges is installing ..."   #   sleep 2
#	echo "`cat torrc`" | sudo tee /etc/tor/torrc  &>/dev/null
#	sleep 1
#clear
#echo  "done!"
#sleep 1
#clear
echo "starting tor service ... "
	sudo systemctl daemon-reload 
	sleep 2
	sudo systemctl restart tor.service
clear
sleep 1
echo "done!"
sleep 1
clear
sleep 1
echo "tor is ready! :)"
sleep 1
echo -e " 
Telegram : LinApps
Instagram : LinApps_Insta
"
fi

	}


################# Install in pacman  #########################

pacman () {

slepp 1
if [ "1" == "1" ]; then
clear
echo "tor is installing ... "
sleep 2
	sudo pacman -S --noconfirm tor &>/dev/null
clear
sleep 1
echo -e "done!"
sleep 1
clear
# echo "obfsproxy is installing ... "
#sleep 1
#clear 
 #   sudo pacman -U --noconfirm Arch/obfs4proxy.pkg.tar.xz  &>/dev/null
#	sleep 2
 #   sudo pacman -Sy --noconfirm obfs4proxy  &>/dev/null

#echo -e "the bridges are installing ..."  
 #   sleep 2
#	echo "`cat torrc`" | sudo tee /etc/tor/torrc  &>/dev/null
#	sleep 1
	
#[[ ! $(systemctl status tor.service | grep " active" ) ]] && sudo cp -f Arch/tor.service /etc/systemd/system/multi-user.target.wants
		 

	
#clear
#sleep 
#echo  "done!"
#sleep 1
#clear
echo "starting tor service ... "
	sleep 1
	sudo systemctl enable tor.service
	sleep 1
        sudo systemctl start tor.service
clear
sleep 1
echo "done!"
sleep 1
clear
sleep 1
echo "tor is ready! :)"
sleep 1
echo -e " 
Telegram : LinApps
Instagram : LinApps_Insta
"

fi

	}

################# Distro Select #########################


 hostnamectl | grep "Operating System" | cut -c 21-24 > /tmp/distro_name.txt

 distro_name=`cat /tmp/distro_name.txt`


declare -A osInfo;
osInfo[/etc/redhat-release]=dnf
osInfo[/etc/arch-release]=pacman
osInfo[/etc/gentoo-release]=emerge
osInfo[/etc/SuSE-release]=zypp
osInfo[/etc/debian_version]=apt

for f in ${!osInfo[@]}
do
    if [[ -f $f ]];then
       distro=${osInfo[$f]} 
    fi
done

echo  "$distro"

################# apt #########################

clear

case "$distro" in

		"apt")


case "$distro_name" in

	"Ubun")
	
echo "You Are Using Ubuntu Distro :)"
;;

		
	"Deep")
	
echo "You Are Using Deepin Distro :)"
;;


    "Linu")
	
echo "You Are Using Linux Mint Distro :)"
;;


    "Zubu")
	
echo "You Are Using Zubuntu Distro :)"
;; 


    "Xubu")
	
echo "You Are Using Xubuntu Distro :)"
;; 


    "Debi")
	
echo "You Are Using Debian Distro :)"
;; 


*)

esac

echo -e "please wait ..."

sleep 5
apt
;;

*)

esac



##################      pacman        ###########################3



case "$distro" in

		"pacman")


case "$distro_name" in

	"Arch")
	
echo "You Are Using Arch Distro :)"
;;

		
	"Manj")
	
echo "You Are Using Manjaro Distro :)"
;;


    "Anar")
	
echo "You Are Using Anarchy Distro :)"
;;


*)

esac

echo -e "please wait ..."

sleep 5
pacman

;;

*)
esac


##################      dnf        ###########################3

case "$distro" in

		"dnf")


case "$distro_name" in

	"Fedo")
	
echo "You Are Using Fedora Distro :)"
;;


*)

esac

echo -e "please wait ..."

sleep 5
dnf

;;

*)
esac
