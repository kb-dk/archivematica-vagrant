#!/usr/bin/env bash

# 6. continued

sudo apt-get -y install archivematica-dashboard
sudo apt-get -y install elasticsearch

echo "7. Configure the dashboard"

sudo rm -f /etc/apache2/sites-enabled/*default*
sudo wget -q https://raw.githubusercontent.com/artefactual/archivematica/stable/1.4.x/localDevSetup/apache/apache.default -O /etc/apache2/sites-available/default.conf
sudo ln -s /etc/apache2/sites-available/default.conf /etc/apache2/sites-enabled/default.conf
sudo /etc/init.d/apache2 restart
echo "# Updating virus database - some mirrors are slow."
sudo freshclam
sudo /etc/init.d/clamav-daemon start
sudo /etc/init.d/elasticsearch restart
sudo /etc/init.d/gearman-job-server restart
sudo start archivematica-mcp-server
sudo start archivematica-mcp-client
sudo start fits
