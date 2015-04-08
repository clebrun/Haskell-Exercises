# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :ansible do |ans|
    ans.playbook = "playbook.yml"
  end
  config.ssh.shell = "/usr/bin/zsh"
end
