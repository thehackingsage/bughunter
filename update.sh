#!/bin/bash
clear
BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${GREEN}  __________                 ___ ___               __   "
echo "  \______   \__ __  ____    /   |   \ __ __  _____/  |_  by Mr. SAGE   "
echo "   |    |  _/  |  \/ ___\  /    ~    \  |  \/    \   __\/ __ \_  __ \  "
echo "   |    |   \  |  / /_/  > \    Y    /  |  /   |  \  | \  ___/|  | \/  "
echo "   |______  /____/\___  /   \___|_  /|____/|___|  /__|  \___  >__|     "
echo "          \/     /_____/          \/            \/          \/         "
echo -e "${GREEN} ${NC}"
echo -e "${RED}  [!] Top Tools for Bug Hunting [!] | https://thehackingsage.github.io ${NC} "
echo ""
echo "------------------------------------------------------------------------"
echo ""
echo -e "${CYAN} [>] Press ENTER to Update Bug Hunter, CTRL+C to Abort.${NC}"
read INPUT 
echo ""

clear

sudo chmod +x /etc/

clear

sudo chmod +x /usr/share/doc

clear

sudo rm -rf /usr/share/doc/bughunter/

clear

cd /etc/

clear

sudo rm -rf /etc/xsagex

clear

mkdir xsagex

clear

cd xsagex

clear

wget https://github.com/thehackingsage/BugHunter/blob/master/install.sh

clear

sudo chmod +x install.sh

clear

./install.sh

clear
