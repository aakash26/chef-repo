#
# Cookbook Name:: patching
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


if  node["platform"] == "ubuntu"
	puts "ubuntu hai"
	Update.update_ubuntu
elsif  node["platform"] == "oracle"
	puts "oracle hai"
	Update.getupdateinfo
end


Chef::Log.info("The os installe is #{node["os"]}")
Chef::Log.info("The platform  is #{node["platform"]}")