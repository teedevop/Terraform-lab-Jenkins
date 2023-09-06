#!/bin/bash

# Update the package repository
sudo yum update -y

# Install Java 11
sudo amazon-linux-extras install java-openjdk11 -y

# Import the Jenkins repository key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Add the Jenkins repository to the system
sudo sh -c 'echo -e "[jenkins]\nname=Jenkins\nbaseurl=https://pkg.jenkins.io/redhat-stable/\ngpgcheck=1" > /etc/yum.repos.d/jenkins.repo'

# Install Jenkins
sed -i 's/gpgcheck=1/gpgcheck=0/g'   /etc/yum.repos.d/jenkins.repo
sudo yum install jenkins -y

# Start and enable the Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins 