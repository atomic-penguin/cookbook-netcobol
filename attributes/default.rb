#
# Cookbook Name:: netcobol 
# Attributes:: default
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

if node['kernel']['machine'] =~ /^(x|i[3456])86$/i
  default['netcobol']['packages'] = %w{ FJSVcbl FJSVcbr }
  default['netcobol']['paths'] = %w{ /opt/FJSVcbl }
  default['netcobol']['libpaths'] = [
    "#{node['netcobol']['paths'].first}/COBOLRT/lib",
    "#{node['netcobol']['paths'].first}/COBOL/lib",
    "#{node['netcobol']['paths'].first}/lib"
  ]
  default['netcobol']['manpaths'] = Array.new
  default['netcobol']['nlspaths'] = [
    "#{node['netcobol']['paths'].first}/lib/nls/%L/%N.cat",
    "#{node['netcobol']['paths'].first}/lib/nls/C/%N.cat"
  ]
  default['netcobol']['copypaths'] = [
    "#{node['netcobol']['paths'].first}/copy",
    "."
  ]
elsif node['kernel']['machine'] =~ /^(x86_|amd)64$/i
  default['netcobol']['packages'] = %w{
    FJSVXcbl
    FJSVXcbr
    FJSVXcbre
    FJSVXcblf
    FJSVXcbrf
    FJSVXmeft
    FJSVXbsrt
    FJSVXrds
  }
  default['netcobol']['paths'] = %w{ /opt/FJSVcbl64 /opt/FJSVXbsrt }
  default['netcobol']['libpaths'] = %w{
    /opt/FJSVcbl64/lib
    /opt/FJSVXbsrt/lib
    /opt/FJSVXmeft/lib
  }
  default['netcobol']['manpaths'] = %w{ 
    /opt/FJSVcbl64/man/%L
    /opt/FJSVcbl64/man
    /opt/FJSVXbsrt/man/%L
    /opt/FJSVXbsrt/man
  }
  default['netcobol']['nlspaths'] = %w{
    /opt/FJSVcbl64/lib/nls/%L/%N.cat
    /opt/FJSVcbl64/lib/nls/C/%N.cat
    /opt/FJSVXbsrt/lib/nls/%L/%N.cat
    /opt/FJSVXbsrt/lib/nls/C/%N.cat
  }
  default['netcobol']['copypaths'] = [
    "#{node['netcobol']['paths'].first}/copy",
    "."  
  ]
else
  default['netcobol']['packages'] = %w{ FJSVcbl FJSVcbr }
  default['netcobol']['paths'] = %w{ /opt/FJSVcbl }
  default['netcobol']['libpaths'] = [
    "#{node['netcobol']['paths'].first}/COBOLRT/lib",
    "#{node['netcobol']['paths'].first}/COBOL/lib",
    "#{node['netcobol']['paths'].first}/lib"
  ]
  default['netcobol']['manpaths'] = Array.new
  default['netcobol']['nlspaths'] = [
    "#{node['netcobol']['paths'].first}/lib/nls/%L/%N.cat",
    "#{node['netcobol']['paths'].first}/lib/nls/C/%N.cat"
  ]
  default['netcobol']['copypaths'] = [
    "#{node['netcobol']['paths'].first}/copy",
    "."
  ]
end
