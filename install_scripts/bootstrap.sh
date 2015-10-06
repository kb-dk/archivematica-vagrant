#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

echo "INSTALLING ARCHIVEMATICA 1.4 PACKAGES (NEW INSTALL)"

/vagrant/install_scripts/repos.sh > /dev/null

/vagrant/install_scripts/storage.sh > /dev/null

/vagrant/install_scripts/mcp.sh > /dev/null
/vagrant/install_scripts/dashboard.sh > /dev/null

/vagrant/install_scripts/guide.sh
