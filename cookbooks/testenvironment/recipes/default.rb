#
# Cookbook Name:: testenvironment
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info("I am in version 0.1.3")

my_resources "installsssing_some_software" do
	action :prepare
	action :ram
end