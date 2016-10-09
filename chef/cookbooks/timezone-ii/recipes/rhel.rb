#
# Cookbook Name:: timezone-ii
# Recipe:: rhel
#
# Copyright 2013, Lawrence Leonard Gilbert <larry@L2G.to>
#
# Apache 2.0 License.
#

# Also, we change /etc/sysconfig/clock to the timezone and apply linux-generic

file "/etc/sysconfig/clock" do
  owner "root"
  group "root"
  mode "0644"
  content "ZONE=\"#{node.tz}\"\n"
end

include_recipe 'timezone-ii::linux-generic'

# vim:ts=2:sw=2:
