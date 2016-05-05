# Vagrant Db Development Box

A Ubuntu VM with database development in mind.

For now this includes the following clients for connecting to remote databases:

* DB2 Client (CLP and CLPPLUS)
* Oracle client (SQLPlus) 

## DB2 Client

CLI for DB2.

### Installation

* Download IBM Data Server Runtime Client from [here](http://www-01.ibm.com/support/docview.wss?uid=swg21385217). You may or may not have to sign up for an IBM account to be able to download. Select the Linux 32bit version "IBM Data Server Runtime Client (Windows 32-bit AMD and Intel x86)". 
* Place downloaded file ```ibm_data_server_runtime_client_linuxia32_v10.5.tar.gz``` in your Vagrant directory.
* [Provision](../README.markdown) Vagrant instance.

Provisioning steps are detailed in ```bootstrap-db.sh```. You may want to run these manually.

Currently the install is performed non-root as user vagrant. This results in the DB2 client being installed into ```~/sqllib```. Whilst this works, further investigation is to be performed to install as root in ```/opt/ibm``` as originally intended.

*NB: at the time of writing the current version of the IBM Data Server Driver Package was 10.5*

### Usage

Once installed, create a new session to call ```db2profile``` which was added to ```~/.bashrc``` by the DB2 Client installer. 

#### DB2 CLI

The traditional 'CLP' is available via the command ```db2```:

```
db2 catalog tcpip node <nodename> remote <db hostname> server <port>
db2 catalog database <database_name> at node <nodename>
db2 terminate
db2 connect to <database_name> user <user_name>
db2 select current timestamp from SYSIBM.SYSDUMMY1
```

#### DB2 CLPPLUS

The newer client CLPPlus is available via the command ```clpplus```:

```
clpplus -nw <username>@<db hostname>:<db port>/<db name>
```

## Oracle Client

Coming....
