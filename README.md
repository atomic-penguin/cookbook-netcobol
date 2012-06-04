# NetCOBOL [![Build Status](https://secure.travis-ci.org/atomic-penguin/cookbook-netcobol.png?branch=master)](http://travis-ci.org/atomic-penguin/cookbook-netcobol)

## Description

    Installs packages and deploys license files for Fujitsu NetCOBOL.
Further proof that you can do enterprise-y things with Chef.

## Requirements

There needs to be NetCOBOL packages on your internal yum repository.
I cannot and will not redistribute the proprietary RPM files to you.

You can use the yumrepo::corporate recipe to point this recipe at an
internal yum repository.

### i386 RPM files

* FJSVcbl - COBOL compiler
* FJSVcbr - COBOL runtime

### x86_64 RPM files

* FJSVXcbl - COBOL compiler
* FJSVXcbr - COBOL runtime
* FJSVXrds - Remote Development Service
* FJSVXcbre - COBOL runtime for Insterstage Job Workload
* FJSVXcblf - J Adapter to wrap Java classes to be
              used by COBOL programs.
* FJSVXcbrf - J Adapter runtime
* FJSVXmeft - Form feature
* FJSVXbsrt - Sort, merge, and copy

## Attributes

* netcobol['packages']
  - List of packages to install. 
  - Defaults to FJSVcbl and FJSVcbr 

* netcobol['path']
  - Path for profile script.
  - Defaults to /opt/FJSVcbl or /opt/FJSVcbl64, depending
    on architecture

## Usage

1. Copy FJSVcbl and FJSVcbr rpms to a webserver, or internal
   yum repository.
2. Run `createrepo` on your internal yum repository if needed.
3. Put `recipe[netcobol]` in your `run_list`.

## License and Author

Author:: Eric G. Wolfe
Copyright:: 2010

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
