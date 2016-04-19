# Vagrant Db Development Box

A Ubuntu VM with database development in mind.

For now this includes the following clients for connecting to remote databases:

* DB2 Client
* Oracle client (SQLPlus) 

## DB2 Client

CLI for DB2.

### Installation

* Download IBM Data Server Driver Package (DS Driver) from [here](http://www-01.ibm.com/support/docview.wss?uid=swg21385217). You may or may not have to sign up for an IBM account to be able to download. Select the Linux 32bit version "IBM Data Server Driver Package (Linux 32-bit AMD and Intel x86)". 
* Place downloaded file ```ibm_data_server_driver_package_linuxia32_v10.5.tar.gz``` in your Vagrant directory.
* [Provision](../README.markdown) Vagrant instance.

Provisioning steps are detailed in ```bootstrap-db.sh```.

*at the time of writing the current version of the IBM Data Server Driver Package was 10.5*

### Usage

Coming...


## Oracle Client

Coming....
