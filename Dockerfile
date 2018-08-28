FROM ubuntu:16.04

RUN apt-get update

RUN apt-get install -y apache2

RUN apt-get install -y php libapache2-mod-php

RUN apt-get install -y  php-gd

RUN apt install -y wget

RUN wget https://download.dokuwiki.org/out/dokuwiki-8a269cc015a64b40e4c918699f1e1142.tgz

RUN tar -xvzf dokuwiki-8a269cc015a64b40e4c918699f1e1142.tgz

RUN rm dokuwiki-8a269cc015a64b40e4c918699f1e1142.tgz

RUN service apache2 restart

EXPOSE 8080
