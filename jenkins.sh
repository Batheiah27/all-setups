
#! /bin/bash
sudo apt update -y
sudo apt install -y openjdk-17-jdk
java -version
sudo wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/rpm-stable/jenkins.repo

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo apt update -y
sudo apt install -y jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins
