maintainer       "Eric G. Wolfe"
maintainer_email "wolfe21@marshall.edu"
license          "Apache 2.0"
description      "Installs/Configures netcobol"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.8"
depends          "yumrepo"
%w{ centos redhat amazon scientific }.each do |os|
  supports os
end
