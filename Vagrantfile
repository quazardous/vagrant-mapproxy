# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'yaml'
require 'fileutils'

unless File.exists?(File.expand_path(File.join(File.dirname(__FILE__), "./params.yml")))
    FileUtils.copy_file(File.expand_path(File.join(File.dirname(__FILE__), "./dist/params.dist.yml")), File.expand_path(File.join(File.dirname(__FILE__), "./params.yml")));
end

params = YAML.load_file 'params.yml'

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos-65-x64"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"

  config.vm.network "forwarded_port", guest: params['forwarded_port']['guest'], host: params['forwarded_port']['host']

  config.vm.provider :virtualbox do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :shell, path: "provisioning/shell/bootstrap.sh"

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "provisioning/puppet"
    puppet.module_path = "provisioning/puppet/modules"
    puppet.manifest_file  = "bootstrap.pp"
  end

  [].each do |shell|
    config.vm.provision :shell, path: "provisioning/shell/#{shell}"
  end
end
