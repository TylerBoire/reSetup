#!/bin/bash

apt-get update && 
apt-get upgrade -y && 
apt-get dist-upgrade -y && 
apt-get install ia32-libs
apt-get install default-jdk &&
apt-get install default-jre

cd /tmp
wget https://bitbucket.org/pxb1988/dex2jar/downloads/dex2jar-2.0.zip
unzip dex2jar-2.0.zip 
cd /tmp/dex2jar-2.0/
rm *.bat
cd ../
sudo cp -R /tmp/dex2jar-2.0/* /usr/local/bin
cd /usr/local/bin
sudo chmod 775 d2j*
sudo chmod 775 lib/

cd /tmp
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.0.0.jar
mv apktool_2.0.0.jar apktool.jar
mv apktool /usr/local/bin
mv apktool.jar /usr/local/bin
cd /usr/local/bin
chmod +x apktool
chmod +x apktool.jar

cd /tmp
wget https://github.com/java-decompiler/jd-gui/releases/download/v1.4.0/jd-gui_1.4.0-0_all.deb
dpkg -i jd-gui_1.2.0-0_all.deb


