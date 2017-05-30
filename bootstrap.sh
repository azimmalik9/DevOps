#!/usr/bin/env bash

ifconfig
sudo apt-get update -y

cd /
cd /opt

sudo tar zxvf java.tar.gz

sudo update-alternatives --install /usr/bin/java java /opt/jdk1.8.0_45/bin/java 100
sudo update-alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_45/bin/javac 100
sudo update-alternatives --config java 
java -version

sudo tar zxvf maven.tar.gz
sudo update-alternatives --install /usr/bin/mvn mvn /opt/apache-maven-3.3.9/bin/mvn 100
mvn -version

#install Git
sudo apt-get install -y git
java -version
mvn -v
git --version
#git -version 

cd /opt                
                   

sudo dpkg -i jenkins_2.1_all.deb
sudo apt-get install -f -y  
  
sudo apt-get install jenkins

sudo ssh-keygen
sudo service jenkins start  
                       
   

                       
chmod a+x jira.bin     
sudo ./jira.bin << EOF
o
1
2
8081
8006
i
EOF

sudo service jenkins status 
echo "Finished installing"