Jenkins CI/CD Pipeline - SonarQube, Docker, Github Webhooks on AWS | Resume Project | English

git add . && git commit -m "Added new file" && git push

Create 3 EC2 Instances

Jenkins | Docker | SonarQube t2 Medium
Enable all the ports

Login Jenkins

sudo apt update -y
sudo apt install openjdk-11-jre -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins
