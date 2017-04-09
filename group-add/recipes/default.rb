#
# Cookbook:: group-add
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#Create unix group

['dba','unixgrp','webgrp'].each do |grp|
group "#{grp}" do
	action :create
	end
end

include_recipe'group-add::user'	
