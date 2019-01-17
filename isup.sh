#!/bin/bash
# Alpha Bro Here :3
BLUE='\033[94m'
RED='\033[91m'
GREEN='\033[92m'
ORANGE='\033[93m'
RESET='\e[0m'
TARGET="$1"

if [ -z $TARGET ]; then
echo -e "$RED  _                           _      $RESET "
echo -e "$RED / |___ _   _ _ __        ___| |__   $RESET "
echo -e "$RED | / __| | | | '_ \      / __| '_ \  $RESET "
echo -e "$RED | \__ \ |_| | |_) |  _  \__ \ | | | $RESET "
echo -e "$RED |_|___/\__,_| .__/  (_) |___/_| |_| $RESET "
echo -e "$RED             |_|                     $RESET "
  	echo ""
	echo -e "$GREEN [+] by @___0x00$RESET"
	echo -e "$GREEN [+] http://rootnep.al$RESET"
	echo -e "$GREEN [-] Usage: isup.sh <targetlist>$RESET"
	exit
fi

if [[ $TARGET == "--help" ]] || [[ $TARGET == "-h" ]]; then
echo -e "$BLUE  _                           _      $RESET "
echo -e "$BLUE / |___ _   _ _ __        ___| |__   $RESET "
echo -e "$BLUE | / __| | | | '_ \      / __| '_ \  $RESET "
echo -e "$BLUE | \__ \ |_| | |_) |  _  \__ \ | | | $RESET "
echo -e "$BLUE |_|___/\__,_| .__/  (_) |___/_| |_| $RESET "
echo -e "$BLUE             |_|                     $RESET "
echo ""
	echo -e "$GREEN [+] by @___0x00$RESET"
	echo -e "$GREEN [+] http://rootnep.al$RESET"
    echo -e "$GREEN [+] Find alive host from huge domains dumps $RESET"
	echo -e "$GREEN [-] Usage: isup.sh <targetlist, subdomain file>$RESET"
    exit
fi

echo -e "$RED  _                           _      $RESET "
echo -e "$RED / |___ _   _ _ __        ___| |__   $RESET "
echo -e "$RED | / __| | | | '_ \      / __| '_ \  $RESET "
echo -e "$RED | \__ \ |_| | |_) |  _  \__ \ | | | $RESET "
echo -e "$RED |_|___/\__,_| .__/  (_) |___/_| |_| $RESET "
echo -e "$RED             |_|                     $RESET "
echo -e ""
echo -e "$ORANGE [+] by @___0x00$RESET"
echo -e "$ORANGE + ------------------------------=[Gathering Subdomains]=-------------- +$RESET"
echo -e ""
for foo in $(cat $TARGET) #demolist: https://hastebin.com/ahelalunan.css
do
    ping -c1 -W1 $foo > /dev/null 2>&1
    if [[ $? -eq 0 ]];
    then
        echo -e "$foo" | tee -a $TARGET-working.txt
    else
        echo -e "$foo" | tee -a $TARGET-nw.txt
    fi
done
echo -e "$ORANGE [+] Working SubDomains saved to: $TARGET-working.txt"
echo -e "$ORANGE [+] Invalid SubDomains saved to: $TARGET-nw.txt"
echo -e "$ORANGE + -- ----------------------------=[Done!]=----------------------------------- -- +$RESET"
