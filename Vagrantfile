# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "boxcutter/ubuntu1610-desktop"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  config.vm.network "public_network"

  # You can't really disable the private "NAT" network :-(
  #config.vm.network "private_network", ip: "192.168.50.4", auto_config: false

  # Provider-specific configuration so you can fine-tune various settings.
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Give it a name
    vb.name = "Vagrant-GitHub-Pages"

    # Customize the amount of memory on the VM:
    vb.memory = "2048"

    # Atom editor can't run with 3D acceleration
    vb.customize ["modifyvm", :id, "--accelerate3d", "off"]
  end

  # Enable provisioning with a shell script.
  config.vm.provision "shell", inline: <<-SHELL
    echo '****************************** Provisioning for GitHub Pages ******************************'
    echo '----------------------------------'
    echo '- Fixing shell/local bug         -'
    echo '-  and persist /vagrant mounting -'
    echo '----------------------------------'
    # (https://github.com/boxcutter/ubuntu/issues/59)
    update-locale LANG=en_US.UTF-8
    ls /etc/rc.local >/dev/null 2>&1 || echo '#!/bin/bash' > /etc/rc.local && chmod 755 /etc/rc.local
    echo 'mount -t vboxsf vagrant /vagrant' >> /etc/rc.local

    echo '-----------------------------'
    echo '- Updating system libraries -'
    echo '-----------------------------'
    apt-get update
    DEBIAN_FRONTEND=noninteractive apt-get dist-upgrade -y

    echo '--------------------------------'
    echo '- Installing general libraries -'
    echo '--------------------------------'
    apt-get install -y curl git gitk

    echo '--------------------------------'
    echo '- Installing Ruby dependencies -'
    echo '--------------------------------'
    apt-get install -y libreadline-dev libssl-dev zlib1g-dev

    echo '--------------------------'
    echo '- Installing Atom editor -'
    echo '--------------------------'
    # Adapted from https://askubuntu.com/a/630530
    wget -q https://github.com/atom/atom/releases/latest -O /tmp/latest-atom
    wget -q $(awk -F '[<>]' '/href=".*atom-amd64.deb/ {match($0,"href=\\"(.*.deb)\\"",a); print "https://github.com/" a[1]} ' /tmp/latest-atom) -O /tmp/atom-amd64.deb
    dpkg -i /tmp/atom-amd64.deb

    # do user level provisioning
    su -c "source /vagrant/user-provision.sh" vagrant

    echo '------------------------'
    echo '- Reboot to freshen up -'
    echo '------------------------'
    reboot
  SHELL
end
