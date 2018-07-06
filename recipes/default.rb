#
# Cookbook:: install_apache2
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'apache2' 

service 'apache2' do
    service_name 'apache2'
      action [:enable,:start]
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end
