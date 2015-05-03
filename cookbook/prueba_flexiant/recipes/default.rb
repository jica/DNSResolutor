#
# Cookbook Name:: prueba_flexiant
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
include_recipe 'git::default'

directory "#{node['prueba_flexiant']['install_dir']}" do
  owner node['prueba_flexiant']['user']
  group node['prueba_flexiant']['group']
  mode '0755'
  action :create
end

git "#{node['prueba_flexiant']['install_dir']}" do
  repository "https://github.com/jica/Prueba.git"
  reference "master"
  action :sync
end

directory "#{node['prueba_flexiant']['install_dir']}/output" do
  owner node['prueba_flexiant']['user']
  group node['prueba_flexiant']['group']
  mode '0755'
  action :create
end

file "#{node['prueba_flexiant']['install_dir']}/src/ejecutar_script.sh" do
  owner node['prueba_flexiant']['user']
  group node['prueba_flexiant']['group']
  mode '0755'
end

file "#{node['prueba_flexiant']['install_dir']}/src/resolver.sh" do
  owner node['prueba_flexiant']['user']
  group node['prueba_flexiant']['group']
  mode '0755'
end

bash "ejecutar_programa" do
  cwd "#{node['prueba_flexiant']['install_dir']}/src/"
  user node['prueba_flexiant']['user']
  group node['prueba_flexiant']['group']
  code <<-EOH
    ./ejecutar_script.sh query.txt
  EOH
end
