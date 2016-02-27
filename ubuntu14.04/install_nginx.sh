
echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/nginx-stable.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
sudo apt-get update
sudo apt-get -y install nginx sysv-rc-conf
sudo service nginx start
sudo addgroup nginx
sudo useradd -s /usr/sbin/nologin -g nginx -d /var/www -c nginx nginx
sudo sysv-rc-conf nginx on

