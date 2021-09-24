# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Box Setting 
  config.vm.box = "ubuntu/bionic64"      #ubuntu 18.0LTS
  #config.vm.box = "ubuntu/ubuntu-20.04"  #ubuntu 20.0LTS
  #config.vm.box = "ubuntu/trusty64"      #ubuntu 14.0LTS


  # Network Setting
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # config.vm.network "private_network", ip: "192.168.33.10"
  # config.vm.network "public_network"

     
  # Folder Setting
  # config.vm.synced_folder ".", "/var/"


  # Box Provider Setting
  config.vm.provider "virtualbox" do |vb|
  #   vb.gui = true
    vb.memory = "3024"
    vb.cpus =  "3"
  end
 

  # Provision Setting inline shell
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
  
  # Add external shell
  config.vm.provision "shell", path: "bootstrap.sh"
end
