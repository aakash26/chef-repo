require 'mixlib/shellout'

class Update
	def self.getlibstatus
		find= Mixlib::ShellOut.new("sudo yum check-update")
		find.run_command
		Chef::Log.info("#{find.stdout}")
	end

	def self.getupdateinfo
		find= Mixlib::ShellOut.new("yum update -y")
		find.run_command
		Chef::Log.info("#{find.stdout}")
	end

	def self.update_ubuntu
		puts "inside update_ubuntu"
		find= Mixlib::ShellOut.new("apt-get upgrade --force-yes -y -y")
		find.run_command
		Chef::Log.info("#{find.stdout}")
	end
end