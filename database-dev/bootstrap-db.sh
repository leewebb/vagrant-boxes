#!/bin/bash

# START Bootstrap script for Database Dev Box provisioning

# core packages
sudo apt-get install ksh # for DB2 client install

# Install DB2 Client
sudo mkdir /opt/ibm
sudo chown -R vagrant:vagrant /opt/ibm
cp /vagrant/ibm_data_server_driver_package_linuxia32_v10.5.tar.gz /opt/ibm
gunzip ibm_data_server_driver_package_linuxia32_v10.5.tar.gz
tar -xvf ibm_data_server_driver_package_linuxia32_v10.5.tar
rm ibm_data_server_driver_package_linuxia32_v10.5.tar
cd dsdriver
./installDSDriver

# Modify bashrc to source db2profile
cat <<EOT >> ~/.bashrc
# source db2 profile
if [ -f /opt/ibm/dsdriver/db2profile ]; then
    source /opt/ibm/dsdriver/db2profile
fi
EOT

# END Bootstrap script for Database Dev Box provisioning
