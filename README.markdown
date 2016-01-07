# vagrant-purge-old-puppet-from-ubuntu

A script to remove the old version of puppet from the Vagrant ubuntu/trusty64 image

When using Vagrant, it can be problematic when using the ubuntu/trusty64 image when trying to install a version **4.X** version of Puppet.

This is caused by the default ubuntu/trusty64 image already containing an installed version of puppet (**3.x**)

The scripts folder of this project contain versions of this script that can be inlined into the "provision" stage of a Vagrant box startup to automatically remove older puppet if need be.

This script can work in combination with the Vagrant Plugin [vagrant-puppet-install](https://github.com/petems/vagrant-puppet-install)

Version 1.0.0 of the script simply assumes a complete remove and re-install is requested.


--

 **To use this script in your Vagrantfile** , the following code will work...

 ```
 config.vm.define :trusty_ubuntu_box do |trusty_ubuntu_box|
     trusty_ubuntu_box.puppet_install.puppet_version = :latest

     trusty_ubuntu_box.puppet_install.install_url = \
     "https://raw.githubusercontent.com/MikeCaspar/vagrant-purge-old-puppet-from-ubuntu/master/scripts/1.0.0/purge-install.sh"

     trusty_ubuntu_box.vm.box = "ubuntu/trusty64"

     trusty_ubuntu_box.vm.provision "shell", inline: "puppet --version"

 end

 ```
 The safer thing should always be to use latest (it will always be a few versions behind).
  
_If you would like to simply and always get the latest, change the url to
https://raw.githubusercontent.com/MikeCaspar/vagrant-purge-old-puppet-from-ubuntu/master/scripts/latest/purge-install.sh
Although you may find a later version from a merge, etc. only consider latest to the the last tested (released) version
 _


Note: the \ character in the sample above was added as a limitation in the code section in the git README. In your vagrantfile,
remove the \ after install_url.

---
For more information on the vagrant-puppet-install module click [HERE](https://github.com/petems/vagrant-puppet-install)

For more information about Vagrant, go to the Vagrant web site at [https://www.vagrantup.com/](https://www.vagrantup.com/)

We suspect there may be other modules or apps that might be able to use this script.

If you find another use for this script, please let us know by opening an issue. Or, do a fork and pull request to modify the README.md

**Contributing**

To keep maintenance overhead low, a new script will simply be created in a new folder until (and if needed) a more suitable packaging strategy can be determined.

We're trying this as a simple experiment to simplify script downloading and backward compatibility.

Enhancements to the next version script are welcome with Pull Requests.


**Authors:**

Mike Caspar <mike@caspar.com>

