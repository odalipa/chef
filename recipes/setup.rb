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

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'Mariano'
  )
  action :create
end

service 'ntpd' do
  action [ :enable, :start ]
end
