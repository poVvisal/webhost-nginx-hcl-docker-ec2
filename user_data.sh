#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Clone the repository
git clone https://github.com/kingczin/webhost-nginx-hcl-docker-ec2.git
cd webhost-nginx-hcl-docker-ec2/developer-portfolio
# Build and run the Docker container

docker build -t developer-portfolio .
docker run -p 80:3000 developer-portfolio
