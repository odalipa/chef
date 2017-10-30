package 'ntp' do
  action :install
end

package 'emacs'
package 'vim-enhanced'

package 'tree' do
  action :install
end

package 'iotop' do
  action :install
end



package 'git' do
  action :install
end

file '/etc/motd' do
  content "This Server is the Property of Mariano
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']} 
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
"
  action :create
  mode '0644'
  owner 'root'
  group 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end
