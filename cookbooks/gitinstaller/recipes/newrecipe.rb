#
# Cookbook Name:: gitinstaller
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#file "#{node["gitinstaller"]['path']}" do
 # content '<html>This is a placeholder for the home page.</html>'
#end

directory 'C:chef/sample/example' do
  recursive true
  action :create
end


cookbook_file 'C:/chef/sample/example/sample.rb' do
  source 'sample.rb'
  action :create
end


Chef::Log.info("I am in newrecipe in gitinstaller")
Chef::Log.info("attribute values is #{node["gitinstaller"]['name']}")
