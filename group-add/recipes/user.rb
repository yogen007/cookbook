#Creating users

['oracle1','oracle2','oracle3'].each do |usr|

         user "#{usr}" do
         shell "/bin/bash"
         password "#{usr}"
	end
	directory "/home/#{usr}" do
    	     owner "#{usr}"
	     group "dba"
	     mode  "0744"
	     action :create
	end
end

['unixadm1','unixadm2','unixadm3'].each do |unixusr|
	user "#{unixusr}" do
	shell "/bin/bash"
	password "#{unixusr}"
	end
	directory "/home/#{unixusr}" do
	     owner "#{unixusr}"
	     group "unixgrp"
	     mode "0744"
	     action :create
	end
end

['webuser1','webuser2','webuser3'].each do |webusr|
	user"#{webusr}" do
	shell "/bin/bash"
	password "#{webusr}"
	end
	directory "/home/#{webusr}" do
	     owner "#{webusr}"
	     group "webgrp"
	     mode "0744"
     	     action :create
	end
end
    
