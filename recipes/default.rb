#
# Cookbook Name:: netcobol 
# Recipe:: default
#
# Copyright 2011, Eric G. Wolfe
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
include_recipe "yumrepo::corporate"

node['netcobol']['packages'].each do |netcobol|
  package netcobol
end

directory "/etc/opt/NetCOBOL" do
  recursive true
  owner "root"
  group "root"
  mode "0755"
end

cookbook_file "/etc/opt/NetCOBOL/license.txt" do
  source "license.txt"
  owner "root"
  group "root"
  mode "0644"
end

template "/etc/profile.d/cobolenv.sh" do
  owner "root"
  group "root"
  mode "0755"
end
