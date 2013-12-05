#
# Cookbook Name:: cla_diamond
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

node.override["diamond"]["install_method"] = "source"
node.override["diamond"]["graphite_server_role"] = nil
node.override["diamond"]["graphite_server"] = "erato.cla.umn.edu"
node.override["diamond"]["path_prefix"] = "servers"
node.override["diamond"]["interval"] = "100"
node.override["diamond"]["handlers"] = "diamond.handler.graphite.GraphiteHandler, diamond.handler.archive.ArchiveHandler"
node.override["diamond"]["source_repository"] = "git://github.com/BrightcoveOS/Diamond.git"
node.override["diamond"]["source_path"] = "/usr/local/share/diamond_src"
node.override["diamond"]["source_reference"] = 'v3.4'
node.override['diamond']['add_collectors'] = ['cpu', 'diskspace', 'diskusage', 'loadavg', 'memory', 'network', 'vmstat', 'tcp']
node.override[:diamond][:collectors][:DiskSpaceCollector][:filesystems] = 'ext2, ext3, ext4'
node.override["diamond"]["cookbook_package"]["debian"] = "diamond_3.4.deb"
node.override["diamond"]["cookbook_package"]["redhat"] = "diamond_3.4.noarch.rpm"
node.override["diamond"]["version"] = "3.4"


include_recipe "diamond"