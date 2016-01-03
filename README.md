# vagrant-purge-old-puppet-from-ubuntu

A script to remove the old version of puppet from the Vagrant ubuntu/trusty64 image

When using Vagrant, it can be problematic when using the ubuntu/trusty64 image when trying to install a version 4.X version of Puppet.

This is caused by the default ubuntu/trusty64 image already containing an installed version of puppet (3.X)

The scripts folder of this project contain versions of this script that can be inlined into the "provision" stage of a Vagrant box startup to automatically remove older puppet if need be.

Version 1.0.0 of the script simply assumes a complete remove and re-install is requested.

This script can work in combination with the Vagrant Plugin 'vagrant-puppet-install'

Enhancements to this script are welcome with Pull Requests.



