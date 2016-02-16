# Ansible playbook for Oracle Enterprise Edition

This is an [Ansible](http://www.ansibleworks.com/) playbook for [Oracle EE 12c](http://www.oracle.com/technetwork/products/express-edition/overview/index.html). It can be used by itself or as part of a larger playbook.

You can provision a Vagrant box with it or use it create Oracle EE base images for [Docker](https://www.docker.com/).

Based on https://github.com/cvezalis/oracledb-ansible

## Prerequisites

Download Oracle EE 12c release 1 from [oracle](http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html) and add linuxamd64_12102_database-* under ./files directory.:

# Steps

## Testing locally with Vagrant

[Vagrant](http://www.vagrantup.com/) configuration is provide. After installing Vagrant, run `vagrant up` at the root of the project to get a VM instance bootstrapped and configured with a running instance of Oracle 12c.

You can access the Enterprise Manager Express using sys/sysdba and “oracle” as password.

https://oradb.private:5500/em

# License

MIT
