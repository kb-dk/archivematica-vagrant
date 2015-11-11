#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

# https://www.archivematica.org/en/docs/archivematica-1.4/admin-manual/installation/installation/#install-new

>&2 echo "INSTALLING ARCHIVEMATICA 1.4 PACKAGES (NEW INSTALL)"
>&2 echo "# -------------------------------------------------------"

>&2 echo "# -> repos.sh"
/vagrant/install_scripts/repos.sh 

>&2 echo "# -> storage.sh"
/vagrant/install_scripts/storage.sh 

>&2 echo "# -> mcp.sh"
/vagrant/install_scripts/mcp.sh 

>&2 echo "# -> dashboard.sh"

/vagrant/install_scripts/dashboard.sh 
>&2 echo "# -------------------------------------------------------"

/vagrant/install_scripts/guide.sh
