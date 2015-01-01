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

By default the guest 8888 port is mapped the host 8888 port :

http://localhost:8888/demo/

### Params

The box creates a default params.yml with various parameters (ports, etc).

You can edit this file to match your needs.

From host :

    vagrant ssh -c 'sudo service solr restart'

## Troubleshooting

### Service statup

For now you need to restart solr service each time you up.

    vagrant ssh -c 'sudo service solr restart'

-> http://razius.com/articles/launching-services-after-vagrant-mount/

So after install you have to up you box with:

    vagrant up && vagrant ssh -c 'sudo service solr restart'

## License

MIT
