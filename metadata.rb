maintainer       "Ryan J. Geyer"
maintainer_email "me@ryangeyer.com"
license          "All rights reserved"
description      "Installs/Configures dotfiles"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

# Not necessarily tested on each of these, but it should be quite universal.
%w{darwin ubuntu debian centos rhel}.each do |os|
  supports os
end

depends "rightscale"

recipe "dotfiles::install", "Clones a dotfiles repository and executes the bootstrap.sh file to get it setup"

attribute "dotfiles/git_uri",
  :display_name => "Dotfiles Git URI",
  :required => "optional",
  :default => "git://github.com/rgeyer/dotfiles.git"

attribute "dotfiles/install_dir",
  :display_name => "Dotfiles install dir",
  :required => "optional"