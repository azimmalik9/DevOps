#!/usr/bin/env bash

ifconfig
sudo yum update -y

cd /vagrant/
scp java.tar.gz /opt/
scp maven.tar.gz /opt/
scp jenkins_2.1_all.deb /opt/
cd /opt/
sudo tar zxvf java.tar.gz

sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 100
#sudo update-alternatives --config java 


sudo tar zxvf maven.tar.gz
sudo update-alternatives --install /usr/bin/mvn mvn /opt/apache-maven-3.3.9/bin/mvn 100


#install Git
sudo yum install -y git
java -version
mvn -v
git --version
#git -version

cd /opt                
                       
dpkg -i jenkins_2.1_all.deb
sudo yum install -f -y  
sudo yum install -y jenkins

service jenkins start  
                       
jenkins -version      
sudo service jenkins status
#                       
#chmod a+x jira.bin     
# sudo ./jira.bin << EOF
#o                      
#1
#2
#8081
#8006
#i
#EOF
# 
echo "Finished installing"