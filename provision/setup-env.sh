#!/bin/bash
sudo mkdir /home/vagrant/hadoop
sudo tar zxvf /vagrant/hadoop-2.7.1.tar.gz -C /home/vagrant/hadoop --strip-components 1
sudo rpm -ivh /vagrant/jdk-8u65-linux-x64.rpm
sudo cat /vagrant/profile.txt >> /etc/profile
sudo yum update -y
