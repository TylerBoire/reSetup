#!/bin/bash

apt-get update && 
apt-get upgrade -y && 
apt-get dist-upgrade -y && 
apt-get install jd-gui &&
apt-get install ia32-libs
apt-get install default-jdk &&
apt-get install default-jre

cd /tmp
wget https://bitbucket.org/pxb1988/dex2jar/downloads/dex2jar-2.0.zip
unzip dex2jar-2.0.zip -d
cd ~/dex2jar-2.0
rm *.bat
cd ../
cp ~/dex2jar-2.0/* /usr/local/bin
cd /usr/local/bin
chmod +x d2j-*

cd /tmp
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.0.3.jar
mv apktool_2.0.3.jar apktool.jar
mv apktool /usr/local/bin
mv apktool.jar /usr/local/bin
cd /usr/local/bin
chmod +x apktool
chmod +x apktool.jar




