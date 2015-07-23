# Experiments with Vagrant.

## centos-6.6-x86_64
* Build Vagrant Base Box for further usage with Veewee. Includes Puppet.
* Requirements: [virtualbox](https://www.virtualbox.org/), [vagrant](https://www.vagrantup.com/), [veewee](https://github.com/jedi4ever/veewee)
* Build: $ veewee vbox build centos-6.6-x86_64
* Export: $ veewee vbox export centos-6.6-x86_64

## vagrant-wls12c-centos6
* Vagrantfile and Puppet modules for provisioning WebLogic 12c environment
* Puppet modules for Oracle by Edwin Biemond: https://github.com/biemond.