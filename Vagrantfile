# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

$provsh = <<SCRIPT
echo 'Running apt-get update'
apt-get -qq update

echo 'Installing packages'
apt-get -qq install git python3 python3-pip

echo 'Installing mypy from the python/mypy GitHub repository'
pip3 install git+git://github.com/python/mypy.git
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = false

  config.vm.provider "virtualbox" do |vb|
    vb.name = "ubu1604-mypy"
    vb.memory = 2048
    vb.cpus = 2
  end

  config.vm.provision :shell, :inline => $provsh
end
