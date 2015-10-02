#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

echo "INSTALLING ARCHIVEMATICA 1.4 PACKAGES (NEW INSTALL)"

$SCRIPT_DIR/repos.sh

$SCRIPT_DIR/storage.sh

$SCRIPT_DIR/mcp.sh
$SCRIPT_DIR/dashboard.sh


#If you have trouble with the gearman command try this as an alternative:

#sudo restart gearman-job-server
#Test the storage service
#The storage service runs as a separate web application from the Archivematica dashboard. Go to the following link in a web browser:
#http://localhost:8000 (or use the IP address of the machine you have been installing on).

#log in as user: test password: test

#Create a new administrative user in the Storage service
#The storage service has its own set of users. In the User menu in the Administrative tab of the storage service, add at least one administrative user, and delete or modify the test user.

#Test the dashboard
#You can login to the Archivematica dashboard and finish the installation in a web browser: http://localhost (again, use the IP address of the machine you have been installing on)

#Register your installation for full Format Policy Registry interoperability.