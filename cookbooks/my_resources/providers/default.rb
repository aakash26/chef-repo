action :prepare do
	Chef::Log.info("in prepare actions")
	Chef::Log.info("the attributes values are #{new_resource.working_dir}")
	Chef::Log.info("the attributes values are #{new_resource.name}")
	Chef::Log.info("the attributes values are #{new_resource.config_file}")
end


action :cleanup do
	Chef::Log.info("in cleanup actions")
end

action :ram do
	Chef::Log.info("me lakshman hi0")
end