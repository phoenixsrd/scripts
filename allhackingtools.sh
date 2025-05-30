#upgrade all & full packages
apt update -y apt upgrade -y

#add your termux permision
termux-setup-storage

#install package git
apt install git -y

#clone this repository
git clone https://github.com/mishakorzik/AllHackingTools

#cd to directory allhackingtools
cd AllHackingTools

#permission to execute the file
chmod +x Install.sh

#start script to install system
bash Install.sh
