#!/bin/bash -ex

echo "#########################################################################"
echo "#########################################################################"
echo "###################_____TranS Installer For Linux_____###################"
echo "#########################################################################"
echo "#########################################################################"


echo "########################_____Installing Wine_____########################"

sudo dpkg --add-architecture i386
sudo apt-get update 
sudo apt-get install wine:i386


echo "################_____Installing .NET Framework 4.5_____##################"

sudo apt-get install winetricks
winetricks dotnet45

echo "#################_____Downloading Files From Source_____#################"



echo "###########################_____Extracting_____##########################"

echo "##########################_____Copying Files_____########################"

echo "####################_____Deleting Temprary Files_____####################"

