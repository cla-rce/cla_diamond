# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
config.omnibus.chef_version = :latest
  
  # config.vm.define :precise do |config|
  #   config.vm.box = "Opscode-Ubuntu_12.04"
  #   config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
  #   config.vm.provision :chef_solo do |chef|
  #   chef.run_list = [
  #       "recipe[cla_diamond::default]"
  #   ]
  #   end
  # end
  # 
  # config.vm.define :lucid do |config|
  #   config.vm.box = "Opscode-Ubuntu_10.04"
  #   config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-10.04.box"
  #   config.vm.provision :chef_solo do |chef|
  #   chef.run_list = [
  #       "recipe[cla_diamond::default]"
  #   ]
  #   end
  # end
  
  config.vm.define :ubi13 do |config|
    config.vm.box = "Opscode-Ubuntu_13.10"
    config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-13.10_chef-provisionerless.box"
    config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        "recipe[cla_diamond::default]"
    ]
    end
  end
  
  # config.vm.define :cent5 do |config|
#     config.vm.box = "Opscode-CentOS5"
#     config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-5.9_provisionerless.box"
#     config.vm.provision :chef_solo do |chef|
#     chef.run_list = [
#         "recipe[cla_diamond::default]"
#     ]
#     end
#   end  
#   
#   config.vm.define :cent6 do |config|
#     config.vm.box = "Opscode-CentOS6"
#     config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box"
#     config.vm.provision :chef_solo do |chef|
#     chef.run_list = [
#         "recipe[cla_diamond::default]"
#     ]
#     end
#   end  
end