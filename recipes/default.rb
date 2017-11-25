#
# Cookbook:: jenkins-chef-pipeline
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
yum_package 'httpd' do
  action :install
end
