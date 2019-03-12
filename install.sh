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
echo -e "${CYAN} [>] Press ENTER to Install, CTRL+C to Abort.${NC}"
read INPUT 
echo ""
if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
INSTALL_DIR="$PREFIX/usr/share/doc/bughunter"
BIN_DIR="$PREFIX/usr/bin/"
pkg install -y git python2
else
INSTALL_DIR="/usr/share/doc/bughunter"
BIN_DIR="/usr/bin/"
fi
echo "[✔] Checking Directories...";
if [ -d "$INSTALL_DIR" ]; then
echo "[◉] A Directory BugHunter Was Found.. Do You Want To Replace It? [y/n] : " ;
read agree
if [ "$agree" = "y" ]; then
rm -R "$INSTALL_DIR"
else
exit
fi
fi
echo "[✔] Installing ...";
echo "";
git clone https://github.com/thehackingsage/bughunter.git "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/bughunter.py" '${1+"$@"}' > bughunter;
chmod +x bughunter;
sudo cp bughunter /usr/bin/;
rm bughunter;
if [ -d "$INSTALL_DIR" ] ;
then
echo "";
echo -e "${YELLOW} [✔] Successfully Installed !!! [✔]${NC}";
echo "";
echo -e "${YELLOW} [✔] you can execute tool by typing${NC} ${RED}bughunter${NC} !! [✔]";
echo "";
else
echo -e "${RED} [✘] Installation Failed !!! [✘]${NC}";
exit
fi

