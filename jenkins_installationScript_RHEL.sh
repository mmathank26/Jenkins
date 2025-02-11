#! /bin/bash

#sudo dnf update -y
echo "
      #################################
      #################################
              System Update Done
      #################################
      #################################"

echo "
      #################################
      #################################
           Adding Jenkins Repository
      #################################
      #################################"


sudo dnf install wget -y

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

echo "
      #################################
      #################################
           Installing Java
      #################################
      #################################"


sudo dnf install java-17-openjdk -y


echo "
      #################################
      #################################
           Adding Jenkins Repository
      #################################
      #################################"


 sudo dnf install jenkins -y


echo "
      #################################
      #################################
        Starting and enabling Jenkins
      #################################
      #################################"


sudo systemctl enable jenkins
sudo systemctl start jenkins 

sudo systemctl status jenkins

echo "
      #################################
      #################################
You can now access Jenkins on port 8080 of the VM
      #################################
      #################################
"

echo "
      ########################################
      ########################################
      Jenkins Installation and Setup Completed
      ########################################
      ########################################"
