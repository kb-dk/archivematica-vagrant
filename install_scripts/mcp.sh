#!/usr/bin/env bash

echo "Install the Archivematica packages (each of these packages can be installed separately, if necessary). Say YES or OK to any prompts you get after entering the following into terminal:"

sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password root"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password root"
sudo debconf-set-selections <<< "archivematica-mcp-server archivematica-mcp-server/dbconfig-install boolean true"
sudo debconf-set-selections <<< "archivematica-mcp-server archivematica-mcp-server/mysql/admin-pass password root"
sudo debconf-set-selections <<< "archivematica-mcp-server archivematica-mcp-server/password-confirm password root"

sudo debconf-set-selections <<< "postfix postfix/main_mailer_type select 'No configuration'"

sudo apt-get -y install archivematica-mcp-server
sudo apt-get -y install archivematica-mcp-client

