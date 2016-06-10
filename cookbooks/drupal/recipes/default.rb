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

include_recipe "apt"
