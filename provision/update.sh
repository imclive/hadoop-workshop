#!/bin/bash
sudo cat 'export JAVA_HOME=/usr/java/default' >> /etc/profile
sudo cat 'export PATH=$PATH:$JAVA_HOME/bin' >> /etc/profile
sudo cat 'export CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar' >> /etc/profile
sudo cat 'export HADOOP_HOME=/home/vagrant/hadoop' >> /etc/profile
sudo cat 'export HADOOP_COMMON_HOME=$HADOOP_HOME' >> /etc/profile
sudo cat 'export HADOOP_HDFS_HOME=$HADOOP_HOME' >> /etc/profile
sudo cat 'export HADOOP_MAPRED_HOME=$HADOOP_HOME' >> /etc/profile
sudo cat 'export HADOOP_YARN_HOME=$HADOOP_HOME' >> /etc/profile
sudo cat 'export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"' >> /etc/profile
sudo cat 'export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native' >> /etc/profile
sudo cat 'export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin' >> /etc/profile
#sudo mkdir /home/vagrant/hadoop
#cd /vagrant
#sudo rpm -ivh jdk-8u65-linux-x64.rpm
#sudo yum update -y
