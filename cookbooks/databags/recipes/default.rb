#
# Cookbook Name:: databags
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


items= data_bag('user')

items.each do | item |
	id=data_bag_item('user',item)
	puts id['name']
	end
