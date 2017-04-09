# Install apache based on OS

case node['platform']

when 'ubuntu'
apt_package "apache2" do
	action :install
	end
service 'apache2' do
	action [:enable,:start]
	end

When 'redhat'
package "httpd" do
	action :install
end
service 'httpd' do
	action [:enable,:start]
end
end
	
