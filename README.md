# Experiments with Vagrant

## centos-6.6-x86_64_puppet
* Build Vagrant Base Box for further usage with Veewee. Includes Puppet.
* Requirements: [virtualbox](https://www.virtualbox.org/), [vagrant](https://www.vagrantup.com/), [veewee](https://github.com/jedi4ever/veewee)
* Build: $ veewee vbox build centos-6.6-x86_64
* Export: $ veewee vbox export centos-6.6-x86_64

## wls12c_centos6_puppet
* Provisioning WebLogic 12c environment to CentOS 6 with Puppet
* Puppet modules for Oracle by Edwin Biemond: https://github.com/biemond.

## ubuntu-dev
* Provisions Ubuntu with Gnome or XFCE for development with Eclipse
* Installs some Eclipse plugins

## oracledb-xe_centos6
* Provisining Oracle Database 11g Express Edition (Oracle Database XE) to CentOS 6 with Ansible
