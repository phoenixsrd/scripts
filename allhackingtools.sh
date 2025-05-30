#!/data/data/com.termux/files/usr/bin/bash
apt update -y && apt upgrade -y
termux-setup-storage
apt install git -y
git clone https://github.com/mishakorzik/AllHackingTools
cd AllHackingTools
chmod +x Install.sh
bash Install.sh
