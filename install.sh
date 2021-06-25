#!/bin/bash -ex

echo "#########################################################################"
echo "#########################################################################"
echo "###################_____TranS Installer For Linux_____###################"
echo "#########################################################################"
echo "#########################################################################"


echo "########################_____Installing Wine_____########################"

sudo dpkg --add-architecture i386
sudo apt-get update 
sudo apt-get install wine:i386 unzip


echo "################_____Installing .NET Framework 4.5_____##################"

sudo apt-get install winetricks
winetricks dotnet45

echo "#################_____Downloading Files From Source_____#################"

wget https://github.com/UnknowName01/TranSforlinux/raw/main/TranS.zip
wget 


echo "###########################_____Extracting_____##########################"

unzip TranS.zip

echo "##########################_____Copying Files_____########################"

cp -r ./TranS /usr/share/

echo "####################_____Deleting Temprary Files_____####################"

rm -f TranS.zip
rm -rf TranS
