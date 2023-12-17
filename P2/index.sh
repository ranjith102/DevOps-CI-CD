Jenkins CI/CD Pipeline - SonarQube, Docker, Github Webhooks on AWS

https://www.youtube.com/watch?v=361bfIvXMBI

Push the code into github

Create a Three EC2 Machine
Jenkins & Docker t2 Micro
SonarQube t2 Medium
Allow all the ports

Jenkins
sudo apt update -y
sudo hostnamectl set-hostname jenkins
/bin/bash
sudo apt install openjdk-17-jre -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
sudo systemctl status jenkins