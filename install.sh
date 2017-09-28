sudo wget -qO- https://get.docker.com/ | sh
sudo usermod -aG docker $(whoami)
sudo systemctl enable docker.service
sudo systemctl start docker.service
#sudo yum install epel-release
#sudo yum install -y python-pip
#sudo pip install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo cd /usr/local/nginx
sudo docker build -t nginx_image .
sudo docker run -d --restart=always -p 80:80 --name kumar nginx_image
