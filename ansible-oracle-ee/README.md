# Ansible playbook for Oracle Enterprise Edition

This is an [Ansible](http://www.ansibleworks.com/) playbook for [Oracle EE 12c](http://www.oracle.com/technetwork/products/express-edition/overview/index.html). It can be used by itself or as part of a larger playbook.

You can provision a Vagrant box with it or use it create Oracle XE base images for [Docker](https://www.docker.com/).

## Prerequisites

Download Oracle EE 12c release 1 from [oracle](http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html) and add linuxamd64_12102_database-* under ./files directory.:

# Steps

## Testing locally with Vagrant

[Vagrant](http://www.vagrantup.com/) configuration is provide. After installing Vagrant, run `vagrant up` at the root of the project to get a VM instance bootstrapped and configured with a running instance of Oracle 12c.

You can access the Enterprise Manager Express using sys/sysdba and “oracle” as password.

https://oradb.private:5500/em

## Include role in a larger playbook

### Add this role as a git submodule

Assuming your playbook structure is such as:
```
- master-playbook
  |- vars
  |- roles
  |- master-playbook-main.yml
```

Checkout this project as a submodule under roles:

```
$  cd roles
$  git submodule add git://github.com/walokra/ansible-oracle-ee.git ./ansible-oracle-ee
$  git submodule update --init
$  git commit ./ansible-oracle-ee -m "Added ansible-oracle-ee as ./ansible-oracle-ee"
```

### Include this playbook as a role in your master playbook

`master-playbook-main.yml`:

```
---

# Oracle EE install
- hosts: localhost
  user: vagrant
  become: yes

  roles:
    - ansible-oracle-ee
```

# License

MIT
