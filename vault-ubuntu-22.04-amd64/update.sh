#!/bin/bash

# Set non-interactive frontend
export DEBIAN_FRONTEND=noninteractive

# Preconfigure packages
sudo debconf-set-selections <<EOF
* libraries/restart-without-asking boolean true
EOF

# Update package lists and upgrade all packages
sudo apt-get update
sudo apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" --force-yes -fuy dist-upgrade

# Clean up
sudo apt-get -y autoremove

# Reboot if necessary
sudo reboot
