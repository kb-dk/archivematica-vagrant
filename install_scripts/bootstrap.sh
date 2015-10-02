#!/usr/bin/env bash

SCRIPT_DIR=$(dirname $(readlink -f $0))

echo "INSTALLING ARCHIVEMATICA 1.4 PACKAGES (NEW INSTALL)"

$SCRIPT_DIR/repos.sh > /dev/null

$SCRIPT_DIR/storage.sh > /dev/null

$SCRIPT_DIR/mcp.sh > /dev/null
$SCRIPT_DIR/dashboard.sh > /dev/null

$SCRIPT_DIR/guide.sh
