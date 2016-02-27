sudo yum update -y

echo "LANG=ja_JP.UTF-8" | sudo tee /etc/sysconfig/i18n

# timezone
echo -e 'ZONE="Asia/Tokyo"\nUTC=false' | sudo tee /etc/sysconfig/clock
sudo ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

sudo reboot

