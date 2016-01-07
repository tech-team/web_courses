#! /usr/bin/env bash

VERSION=1.0

sudo add-apt-repository -y ppa:webupd8team/java

sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 12345'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 12345'
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install -y --force-yes mysql-client mysql-server \
                                    python-dev python-pip \
                                    htop vim \
                                    oracle-java8-installer \
                                    chromium-browser

sudo pip install -U pip
sudo -H pip install Django==1.9.1
sudo -H pip install virtualenv
sudo -H pip install virtualenvwrapper

cd /tmp
wget https://download.jetbrains.com/python/pycharm-professional-5.0.3.tar.gz
tar -xzvf pycharm-professional-5.0.3.tar.gz
sudo mv pycharm-5.0.3/ /opt
cd -
sudo cp pythondev/jetbrains-pycharm.desktop /usr/share/applications

sudo sh -c "echo 'Europe/Moscow' > /etc/timezone"
sudo dpkg-reconfigure -f noninteractive tzdata

sudo touch /etc/vm-version
echo $VERSION | sudo tee /etc/vm-version
