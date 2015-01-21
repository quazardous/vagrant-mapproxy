## Vagrant MapProxy

A simple Centos65-x64 based MapProxy box. The main provision part is in **bash** and it's Puppet enabled.

## MapProxy

MapProxy is an open source proxy for geospatial data. It caches, accelerates and transforms data from existing map services and serves any desktop or web GIS client.

http://mapproxy.org/

## Installation

Clone GIT and vagrant up:

    git clone git@github.com:quazardous/vagrant-mapproxy.git
    vagrant up

## Usage

By default the guest 8080 port is mapped the host 8080 port (8080 is the default mapproxy port).

The box creates a default params.yml with various parameters (ports, etc).

You can edit this file to match your needs.

The box provides a default mymapproxy folder and various examples.

From host :

    vagrant ssh -c 'cd /vagrant/mymapproxy;mapproxy-util serve-develop --bind 0.0.0.0:8080 osm.yaml'

NB: 0.0.0.0 binding is important !

### Cache

Map Proxy will build a cache in the mymapproxy folder.

## License

MIT
