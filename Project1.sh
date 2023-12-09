Jenkins CI/CD Pipeline - SonarQube, Docker, Github Webhooks on AWS | Resume Project | English

git add . && git commit -m "Added new file" && git push

Create 3 EC2 Instances

Jenkins | Docker | SonarQube t2 Medium
Enable all the ports

Login Jenkins

sudo hostnamectl set-hostname jenkins
/bin/bash
sudo apt update -y
sudo apt install openjdk-11-jre -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

Login to the Jenkins via Browser
New- Item --> Automated-Pipeline --> Free style

source code management --> Paste the Url Main
Build trigger --> Github hook
Github --> Webhook --> Url/github-webhook/
send everything
Build now


SonarQube
sudo hostnamectl set-hostname sonarqube
/bin/bash
sudo apt update -y
sudo apt install openjdk-17-jre -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.3.0.82913.zip
sudo apt install unzip
unzip sonarqube
cd /bin/linux/ ls
./sonar.sh
./sonar.sh console
