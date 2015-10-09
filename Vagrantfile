# -*- mode: ruby -*-
# vi: set ft=ruby :

# Reference: 
# http://tracker.ceph.com/projects/ceph/wiki/Ceph_Vagrant_Setup
#

Vagrant.configure("2") do |config|

  # https://www.dropbox.com/s/hn28qgjn59nud6h/ceph-all-in-one.box
  config.vm.define "ceph" do |role|
    role.vm.box = "big-ceph"
    role.vm.network :private_network, ip: "192.168.251.100"
    role.vm.provision :shell, :path => "setup/ceph.sh"
    role.vm.hostname = "ceph"
  end

  config.vm.define "client" do |role|
    role.vm.box = "ubuntu/trusty64"
    role.vm.hostname = "ceph-client"
    role.vm.provision :shell, :path => "setup/client.sh"
    role.vm.network :private_network, ip: "192.168.251.101"
  end

end

