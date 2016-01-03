# vagrant-purge-old-puppet-from-ubuntu

A script to remove the old version of puppet from the Vagrant ubuntu/trusty64 image

When using Vagrant, it can be problematic when using the ubuntu/trusty64 image when trying to install a version 4.X version of Puppet.

This is caused by the default ubuntu/trusty64 image already containing an installed version of puppet (3.X)

The scripts folder of this project contain versions of this script that can be inlined into the "provision" stage of a Vagrant box startup to automatically remove older puppet if need be.

Version 1.0.0 of the script simply assumes a complete remove and re-install is requested.

This script can work in combination with the Vagrant Plugin [vagrant-puppet-install](https://github.com/petems/vagrant-puppet-install)

Enhancements to this script are welcome with Pull Requests.

--

 To use this script in your Vagrantfile, the following code will work...

 ```
 config.vm.define :trusty_ubuntu_box do |trusty_ubuntu_box|
     trusty_ubuntu_box.puppet_install.puppet_version = :latest
     trusty_ubuntu_box.puppet_install.install_url = "https://raw.githubusercontent.com/MikeCaspar/vagrant-purge-old-pupp$

     trusty_ubuntu_box.vm.box = "ubuntu/trusty64"

     trusty_ubuntu_box.vm.provision "shell", inline: "puppet --version"

 end

 ```
---
For more information on the vagrant-puppet-install module click [HERE](https://github.com/petems/vagrant-puppet-install)

We suspect there may be other modules or apps that might be able to use this script.

If you find another use for this script, please let us know by opening an issue. Or, do a fork and pull request to modify the README.md


Authors:
Mike Caspar <mike@caspar.com>

