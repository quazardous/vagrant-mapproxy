## Vagrant MapProxy

A simple Centos65-x64 based MapProxy box. The provision is in **bash** and **Puppet**.

## MapProxy

MapProxy is an open source proxy for geospatial data. It caches, accelerates and transforms data from existing map services and serves any desktop or web GIS client.

http://mapproxy.org/

## Installation

Clone GIT and vagrant up:

    git clone git@github.com:quazardous/vagrant-mapproxy.git
    vagrant up

## Usage

### Basics

By default the guest 8080 port is mapped the host 8080 port (8080 is the default mapproxy port).

The box creates a default params.yml with various parameters (ports, etc).

You can edit this file to match your needs.

The box provides a default mymapproxy folder with various examples.

From host:

    vagrant ssh -c 'cd /vagrant/mymapproxy;mapproxy-util serve-develop --bind 0.0.0.0:8080 mapproxy.yaml'

NB: 0.0.0.0 binding is important !

### Demo

From host:

    vagrant ssh -c 'cd /vagrant/mymapproxy;mapproxy-util serve-develop --bind 0.0.0.0:8080 mapproxy.yaml'

In a host browser:

http://127.0.0.1:8080/demo/

### Cache

Map Proxy will build the cache in the mymapproxy folder.

## Troubleshooting

### Provisionning fails

Provisionning is quite heavy ! So some times it fails...

You'll have to restart provisionning and maybe reload/update some stuff.

On guest rebuild the VB Guest Additions (ssh with vagrant):

    sudo /etc/init.d/vboxadd setup

On host provision again:

    vagrant reload
    vagrant provision

### OMG: no ssh on Windows

Use Putty !

login: vagrant
password: vagrant

## License

MIT
