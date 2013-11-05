#
# Cookbook Name:: cla_diamond
# Recipe:: node.override
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

node.override["diamond"]["install_method"] = "source"
node.override["diamond"]["graphite_server_role"] = "erato.cla.umn.edu"
node.override["diamond"]["graphite_server"] = "graphite"
node.override["diamond"]["path_prefix"] = "servers"
node.override["diamond"]["interval"] = "100"
node.override["diamond"]["handlers"] = "diamond.handler.graphite.GraphiteHandler, diamond.handler.archive.ArchiveHandler"
node.override["diamond"]["source_repository"] = "git://github.com/BrightcoveOS/Diamond.git"
node.override["diamond"]["source_path"] = "/usr/local/share/diamond_src"
node.override["diamond"]["source_reference"] = '3.4'
node.override['diamond']['add_collectors'] = ['cpu', 'diskspace', 'diskusage', 'loadavg', 'memory', 'network', 'vmstat', 'tcp']
node.override[:diamond][:collectors][:DiskSpaceCollector][:filesystems] = 'ext2, ext3, ext4'


include_recipe "diamond"