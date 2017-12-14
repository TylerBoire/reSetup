#######################################
##  Dockerfile for Android RE Setup  ##
##  Based on Ubuntu (For now)        ##
#######################################

FROM ubuntu
MAINTAINER TylerBoire

RUN apt-get update && apt-get upgrade -y
RUN apt-get -f install
RUN apt-get install -y wget unzip

WORKDIR /tmp

RUN wget -O /usr/local/bin/apktool https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
RUN wget -O /usr/local/bin/apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.0.0.jar
RUN wget https://bitbucket.org/pxb1988/dex2jar/downloads/dex2jar-2.0.zip

RUN chmod +x /usr/local/bin/apktool*

RUN unzip dex2jar-2.0.zip -d /tmp
RUN mv /tmp/dex2jar-2.0/* /usr/local/bin/
RUN chmod 775 /usr/local/bin/d2j*
RUN chmod 775 /usr/local/bin/lib/

WORKDIR ~/
