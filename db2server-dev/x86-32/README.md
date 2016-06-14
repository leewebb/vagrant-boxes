# Vagrant DB2 Database Box

A Ubuntu VM with a DB2 database

For now this includes the following:

* DB2 Server (10.5.0.7) for Linux 32 bit
* [DB2Unit](https://github.com/angoca/db2unit) - Unit testing framework for DB2

Inspired and built upon [DB2Unit](https://github.com/angoca/db2unit) by Andres Gomez Casanova.

## DB2 Server

### Installation

Most if not all installation is performed by ```bootstrap.sh```. The intention of this VM is for automating unit testing and continuous integration so automation is key.

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

### Download Link

The following download link is used by ```bootstrap.sh``` to fetch the required source. Update this link as required (Google the file name to find the links on the IBM website as it is a minefield to navigate). The link should always be the last line of the this document and contain no blank lines after the link.

https://delivery04.dhe.ibm.com/sdfdl/v2/sar/CM/IM/05uh6/2/Xa.2/Xb.jusyLTSp44S0wesQs3mVtAb8F6bWBYC76oSg8-l-C-kOeopWWG_V3VSPq3k/Xc.CM/IM/05uh6/2/v10.5fp7_linuxia32_server_t.tar.gz/Xd./Xf.LPR.D1vk/Xg.8657617/Xi.habanero/XY.habanero/XZ.TqUrXvUM1we2MJwjv5FM8YxPYF4/v10.5fp7_linuxia32_server_t.tar.gz
