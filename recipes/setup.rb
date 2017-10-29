package 'ntp' do
  action :install
end

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

file 'etc/motd' do
  content 'This Server is the Property of Mariano'
  action :create
  mode '0644'
  owner 'root'
  group 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end
