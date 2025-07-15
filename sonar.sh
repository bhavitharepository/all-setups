#! /bin/bash
#Launch an instance with 9000 and t2.medium
yum install java-17-amazon-corretto -y
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
unzip sonarqube-8.9.6.50800.zip
useradd sonar
chown -R sonar:sonar sonarqube-8.9.6.50800
//chmod 777 sonarqube-8.9.6.50800 -R
su - sonar
==[/opt/sonarqube-8.9.6.50800/bin/linux-x86-64]
#run this on server manually
#sh /opt/sonarqube-8.9.6.50800
cd /bin/
cd linux-x86-64/
./sonar.sh start
./sonar.sh status
#echo "user=admin & password=admin"
