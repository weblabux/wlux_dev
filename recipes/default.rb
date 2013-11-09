# Cookbook Name:: wlux_dev
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute

file_cache_root = Chef::Config[:file_cache_path]
lampp_dir = "#{node[:xampp][:dir]}/lampp/htdocs"

%w{weblabux drupal/modules/book }.each {|d|
  directory "#{lampp_dir}/#{d}" do
    action :create
    recursive true
  end
}

tarball_path = file_cache_root+"/drupal.tar.gz"
remote_file tarball_path do
  source node[:wlux_dev][:drupal_url]
  action :create_if_missing
  notifies :run, "execute[install_drupal]"
end 

execute 'install_drupal' do
  command "tar xzvf #{tarball_path} -C #{lampp_dir} && mv #{lampp_dir}/drupal-#{node[:wlux_dev][:drupal_version]} #{lampp_dir}/drupal" 
  action :nothing
end

git "wlux drupal files" do
  repository "https://github.com/weblabux/wlux_all.git"
  action :sync
  destination "#{lampp_dir}/drupal/modules/book/"
end
