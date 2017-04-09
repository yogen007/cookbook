#Installing NTP package and edit ntp.conf

package 'ntp'

bash "config_ntp" do
	user "root"
	code <<-EOH
		sed -i 's/^server/#server/g' /etc/ntp.conf
		echo "server utcnist.colorado.edu ibrust" >> /etc/ntp.conf
		echo "server utcnist2.colorado.edu iburst" >> /etc/ntp.conf
	EOH
end

service 'ntpd' do
	action [:start,:enable]
end
