# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
config.omnibus.chef_version = :latest
  
  config.vm.define :precise do |config|
    config.vm.box = "Opscode-Ubuntu_12.04"
    config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-12.04.box"
    config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        "recipe[cla_diamond::default]"
    ]
    # chef.json = { 
 #      "diamond" => { 
 #        "install_method" => "source"
 #        }
 #      }
    end
  end
  
  config.vm.define :lucid do |config|
    config.vm.box = "Opscode-Ubuntu_10.04"
    config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/boxes/opscode-ubuntu-10.04.box"
    config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        "recipe[diamond::default]"
    ]
#     chef.json = { 
#       "diamond" => { 
#         "install_method" => "source"
#         }
#       }
#     end
#   end
#   
  config.vm.define :cent do |config|
    config.vm.box = "Opscode-CentOS5"
    config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_centos-5.9_provisionerless.box"
    config.vm.provision :chef_solo do |chef|
    chef.run_list = [
        "recipe[diamond::default]"
    ]
#     chef.json = { 
#       "python-configobj" => {
#         "install_method" => "yum_package"
#       },
#       "diamond" => { 
#         "install_method" => "source"
#         }
#       }
#     
#     end
#   end
end  
