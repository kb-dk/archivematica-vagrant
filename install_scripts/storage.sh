#!/usr/bin/env bash



echo "4. Install the storage service package"
sudo apt-get -y install archivematica-storage-service

echo "5. Configure the storage service"
sudo rm -f /etc/nginx/sites-enabled/default
sudo ln -s /etc/nginx/sites-available/storage /etc/nginx/sites-enabled/storage
sudo ln -s /etc/uwsgi/apps-available/storage.ini /etc/uwsgi/apps-enabled/storage.ini
sudo service uwsgi restart
sudo service nginx restart
