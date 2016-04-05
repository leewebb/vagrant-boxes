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

Import Ubuntu box

```vagrant box add ubuntu/trusty32```

Bring up and provision instance

```vagrant up```

Connect into VM. Only works if using a command interpreter with a built in SSH client (Git Bash, etc.). Alternatively SSH using favourite client. 

```vagrant ssh```

or

```ssh -p 2222 vagrant@127.0.0.1```

