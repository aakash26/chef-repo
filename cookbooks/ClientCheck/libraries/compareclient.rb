
def systeminfo
	 Chef::Log.debug "Looking for clients for node #{node.name}"
	 nodename = data_bag('clients')
	 Chef::Log.debug "All nodename: #{nodename.inspect}"
	 nodename = nodename.map do |item_id|
	   nodename = data_bag_item('clients', item_id)
	   Chef::Log.debug "clients #{item_id}: #{nodename}"
	   nodename['node'] == node.name ? nodename : nil
	 end.compact
	 nodename = search(:clients, "id:#{node.name}")
	 Chef::Log.info "Found #{nodename.count} databags for node:#{node.name}"
	 nodename
end