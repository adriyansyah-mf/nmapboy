#!/bin/bash


merah=$(tput setaf 1)
ijo=$(tput setaf 2)
dasar=$(tput sgr0)
biru=$(tput setaf 4)
jendela='xterm -hold -fa monaco -fs 10 -bg black -e nmap'


awal () {
	echo -e "${ijo}=============================================== ${dasar}"
	echo -e "${ijo}===========NMAP HELPER========================= ${dasar}"
	echo -e "${ijo}==============kacamata-tekno.net=============== ${dasar}"
	echo -e "${ijo}========================Lorem Ipsum============ ${dasar}"
	echo -e "${ijo}=============================================== ${dasar}"
	echo -e "${biru}v 1.0 ${dasar}"
}
root () {
	clear
if [[ $EUID -ne 0 ]]; then
	echo "${merah}Please,use root user${dasar}"
	exit 1
fi
}
cek(){
	which nmap > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo Nmap di temukan;
       else
       	echo -e "${merah}NMAP not found ${dasar}"
       	echo ""
       	echo "${ijo}DO U WANT INSTALL NMAP ? (YES|NO) ${dasar}"
       	read jawaban
       	if [[ $jawaban="YES" ]]; then
       		apt-get update
       		apt-get install nmap
       	else	
       		exit
       	fi
       	fi
  which xterm > /dev/null 2>&1
      if [ "$?" -eq "0" ]; then
      echo Nmap di temukan;
       else
       	echo -e "${merah}XTERM not found ${dasar}"
       	echo ""
       	echo "${ijo}DO U WANT INSTALL XTERM ? (YES|NO) ${dasar}"
       	read jawaban
       	if [[ $jawaban="YES" || $jawaban="yes" || $jawaban="y" || $jawaban="" ]]; then
       		apt-get update
       		apt-get install xterm
       	else	
       		exit
       	fi
       	fi
}

menu () {
	echo -e "${merah}[1]${dasar}${ijo} OPEN PORT SCAN ${dasar}"
	echo -e "${merah}[2]${dasar}${ijo} OS SCAN ${dasar}"
	echo -e "${merah}[3]${dasar}${ijo} SCANNING SERVICES ${dasar}"
	echo -e "${merah}[4]${dasar}${ijo} INTENSE SCAN PLUS UDP ${dasar}"
	echo -e "${merah}[5]${dasar}${ijo} INTENSE SCAN,all TCP PORT ${dasar}"
	echo -e "${merah}[6]${dasar}${ijo} QUICK SCAN ${dasar}"
	echo -e "${merah}[7]${dasar}${ijo} COMPREHENSIVE SCAN ${dasar}"
	echo -e "${merah}[8]${dasar}${ijo} SQLi SCAN ${dasar}"
	echo -e "${merah}[9]${dasar}${ijo} CSRF SCANNER ${dasar}"
	echo -e "${merah}[10]${dasar}${ijo}HTTP FILE UPLOAD SCANNER ${dasar}"
	echo -e "${merah}[11]${dasar}${ijo}SHELLSHOCK SCANNER ${dasar}"
	echo -e "${merah}[12]${dasar}${ijo}IIS WEBDAV VULN SCANNER ${dasar}"
	echo -e "${merah}[13]${dasar}${ijo}HTTP ENUM ${dasar}"
	echo -e "${merah}[14]${dasar}${ijo}DOUBLEPULSAR SCANNER (ms17-010) ${dasar}"
	echo -e "${merah}[15]${dasar}${ijo}HEARTBLEED SCANNER ${dasar}"


}

menu1(){
	clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target1
	 sleep 2
	 $jendela -vv $target1

	 clear
	 menuutama

}

menu2(){
	clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target2
	sleep 2
	$jendela -O $target2
    
    clear
	menuutama
}

menu3 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target3
	sleep 2
	$jendela -sV $target3
    
    clear
	menuutama
}


menu4 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target4
	sleep 2
	$jendela -sS -sU -T4 -A -v $target4
    
    clear
	menuutama
}

menu5 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target5
	sleep 2
	$jendela -p 1-65535 -T4 -A -v $target5
    
    clear 
	menuutama
}

menu6 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target6
	sleep 2
	$jendela -T4 -F $target6
    
    clear
	menuutama
}

menu7 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target7
	sleep 2
	$jendela -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script "default or (discovery and safe)" $target7
    
    clear
	menuutama
}

menu8 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target8
	sleep 2
	$jendela -sV --script=http-sql-injection $target8
    
    clear
	menuutama
}

menu9 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target9
	sleep 2
	$jendela -p80 --script http-csrf.nse $target9
    
    clear
	menuutama
}

menu10 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target10
	sleep 2
	$jendela -p80 --script http-fileupload-exploiter.nse $target10
    
    clear
	menuutama
}

menu11 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target11
	sleep 2
	$jendela -sV -p- --script http-shellshock $target11
    
    clear
	menuutama
}

menu12 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target12
	sleep 2
	$jendela --script http-iis-webdav-vuln -p80,8080 $target12
    
    clear
	menuutama
}


menu13 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target13
	sleep 2
	$jendela --script http-enum $target13
    
    clear
	menuutama
}

menu14 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target14
	sleep 2
	$jendela -p 445 $target14 --script=smb-double-pulsar-backdoor
    
    clear
	menuutama
}
menu15 () {
clear
	echo "${biru}Insert Your Target : ${dasar}"
	read target14
	sleep 2
	$jendela -sV -p 443 --script=ssl-heartbleed $target
    
    clear
	menuutama
}




menuutama () {
	clear
 root	
 sleep 2
 cek
 clear 
 awal
 sleep 2
 menu
 echo "What Do U Want ? "
 read want 
 case $want in
 	1) menu1;;
    2) menu2;;
	3) menu3;;
	4) menu5;;
	5) menu6;;
	6) menu7;;
	8) menu8;;
	9) menu9;;
	10) menu10;;
	11) menu11;;
	12) menu12;;
	13) menu13;;
	14) menu14;;
	15) menu15;;
    *) menuutamana;;



 esac
}

clear
menuutama
