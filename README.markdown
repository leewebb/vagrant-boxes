# Portable Dev Box

A portable Dev box that can be fired up on the Windows machine that I am invariably required to use. Database / backend focused.

###Requires:
- Oracle Virtual Box
- Vagrant
- Git

###Installed:
- git
- svn
- vim
- tmux
- wget
- curl

###To Do:
- Oracle XE
- Oracle Instant Client + SQLPlus

###Usage:

Clone this repo

```git clone https://github.com/jonbartlett/portable-dev-box```

If behind a corporate firewall that requires the use of a proxy, set the following Windows environment variables:

```HTTP_PROXY=http://proxy.company.com.au:8080```

```HTTPS_PROXY=https://proxy.company.com.au:8080```

```VAGRANT_HTTP_PROXY=http://proxy.company.com.au:8080```

```VAGRANT_HTTPS_PROXY=https://proxy.company.com.au:8080```

```VAGRANT_NO_PROXY=localhost,127.0.0.1,.company.com.au```

then add proxy support in Vagrant:

```vagrant plugin install vagrant-proxyconf```

Import Ubuntu box

```vagrant box add ubuntu/trusty32```

Bring up and provision instance

```vagrant up```

Connect into VM. Only works if using a command interpreter with a built in SSH client (Git Bash, etc.). Alternatively SSH using favourite client (creds vagrant/vagrant)

```vagrant ssh```

or

```ssh -p 2222 vagrant@127.0.0.1```

