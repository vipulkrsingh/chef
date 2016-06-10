#
# Cookbook Name:: drupal
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
file "#{ENV['HOME']}/x.txt" do
  content 'HELLO WORLD'
end


package ['apache*','php*','mysql*','node-less','nodejs','npm'] do
  action :remove
end

include_recipe 'apt'
include_recipe 'php'

php_fpm_pool "default" do
  action :install
end

php_pear "memcache" do
  action :install
end

package ['git','php5-gd','php5-curl','php5-dev','php5-mcrypt','imagemagick','make']

