# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision :shell, path: "./scripts/install.sh"
  config.vm.provision :shell, path: "./scripts/setup_ssh.sh"
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "./provision/playbook.yml"
  end
  config.vm.network :forwarded_port, guest: 27017, host: 27017
end