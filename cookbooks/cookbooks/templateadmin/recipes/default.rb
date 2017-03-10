#
# Cookbook Name:: templateadmin
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template '/home/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['templateadmin']['sudo']['groups'],
    sudoers_users: node['templateadmin']['sudo']['users']
  })
end