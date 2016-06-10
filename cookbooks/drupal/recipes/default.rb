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

include_recipe 'apt'

package ['apache*','php*','mysql*','node-less','nodejs','npm'] do
  action :remove
end

package ['nginx','php5-fpm','php5-mysql','mysql-server-5.5','php5-gd','php5-curl','php5-cli','php5-dev','php5-mcrypt','imagemagick','aptitude','memcached','libmemcached-tools','php-pear','make']
