# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'
 
  config.vm.provision 'ansible' do |ansible|
    ansible.sudo = true
    ansible.playbook = 'playbook.yml'
  end
  
  config.vm.provider 'virtualbox' do |v|
    v.memory = 1024
  end 
end
