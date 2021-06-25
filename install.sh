#!/bin/bash ?

echo "#########################################################################"
echo "#########################################################################"
echo "###################_____TranS Installer For Linux_____###################"
echo "#########################################################################"
echo "#########################################################################"


echo "########################_____Installing Wine_____########################"

sudo dpkg --add-architecture i386
sudo apt-get update 
sudo apt-get install wine:i386 unzip -y


echo "################_____Installing .NET Framework 4.5_____##################"

sudo apt-get install winetricks -y
winetricks dotnet45

echo "#################_____Downloading Files From Source_____#################"

wget https://github.com/UnknowName01/TranSforlinux/raw/main/TranS.zip
wget https://github.com/UnknowName01/TranSforlinux/raw/main/font/tahoma.ttf
wget https://github.com/UnknowName01/TranSforlinux/raw/main/font/tahomabd.ttf
wget https://github.com/UnknowName01/TranSforlinux/raw/main/execute/TranS


echo "###########################_____Extracting_____##########################"

unzip TranS.zip

echo "##########################_____Copying Files_____########################"

cp -r ./TranS /usr/share/
cp TranS /usr/share/TranS/
cp tahoma.ttf $HOME/.wine/drive_c/windows/Fonts/
cp tahomabd.ttf $HOME/.wine/drive_c/windows/Fonts/
chmod 775 /usr/share/TranS/TranS
ln -s /usr/share/TranS/TranS /usr/bin/

echo "####################_____Deleting Temprary Files_____####################"

rm -f TranS.zip
rm -rf TranS
rm -f TranS

echo "########################_____Starting TranS_____#########################"

TranS

echo "#########################################################################"
echo "#########################################################################"
echo "#####################_____TranS Installer Done!_____#####################"
echo "#########################################################################"
echo "#########################################################################"
