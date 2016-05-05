#!/bin/bash

# START Bootstrap script for Database Dev Box provisioning

# core packages
sudo apt-get install ksh # for DB2 client install

# Install DB2 Client
#  client download from http://www-01.ibm.com/support/docview.wss?uid=swg21385217
sudo mkdir /opt/ibm
sudo chown -R vagrant:vagrant /opt/ibm

# copy client install source to/opt/ibm then extract
cd /opt/ibm
cp /vagrant/ibm_data_server_runtime_client_linuxia32_v10.5.tar /opt/ibm
gunzip ibm_data_server_runtime_client_linuxia32_v10.5.tar.gz
tar -xvf ibm_data_server_runtime_client_linuxia32_v10.5.tar

# remove source tar ball
rm ibm_data_server_runtime_client_linuxia32_v10.5.tar

# run pre-reqs script
cd rctl
./db2prereqcheck

# dodgy hack to work around issues reported by db2prereqcheck
ln -s /lib/i386-linux-gnu/libpam.so.0 /lib/libpam.so

# run install script
./db2_install

# Modify bashrc to source db2profile (not needed for none root install)
#cat <<EOT >> ~/.bashrc
## source db2 profile
#if [ -f /opt/ibm/dsdriver/db2profile ]; then
    #source /opt/ibm/dsdriver/db2profile
#fi

## force db2 client to open in termnial mode
#alias clpplus="clpplus -nw"

#EOT

# END Bootstrap script for Database Dev Box provisioning
