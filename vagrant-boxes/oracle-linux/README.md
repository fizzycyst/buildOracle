# Veewee Definitions

[Veewee](https://github.com/jedi4ever/veewee) definitions that can be used to automate the building of Oracle Linux {6,7} Vagrant Base Boxes.

Modified from [terrywang/vagrantboxes](https://github.com/terrywang/vagrantboxes)

## Requirement

* See Veewee [requirements](https://github.com/jedi4ever/veewee/blob/master/doc/requirements.md)
* Ruby Version Manager like `rbenv` or RVM
* Virtualization Providers (e.g. VirtualBox)

## Usage

Install Veewee from source

Clone veewee project

```bash
$ cd /path/to/workspace
$ git clone https://github.com/jedi4ever/veewee.git
$ cd veewee
```
Run `bundle install` to install dependencies specified in Gemfile

**NOTE**: Install gem `rbenv-rehash` to avoid running `rbenv rehash` every time you install new gems when using `rbenv`.

```bash
$ gem install bundler
$ rbenv rehash
$ bundle install
$ rbenv rehash
```

Copy the definitions to the `templates` directory

```bash
$ rsync -av --progress --stats \
  /path/to/vagrantboxes/veewee/definitions/ \
  /path/to/workspace/veewee/templates
```

Ready to build!

## Build

List templates

> NOTE: Suppose we are going to build base box for Oracle Linux 7.2 x86_64.

```bash
$ bundle exec veewee vbox templates | grep -i oracle
```

Create a definition

```bash
$ bundle exec veewee vbox define 'oraclelinux-7.2-x86_64' 'OracleLinux-7.2-x86_64-DVD'
```

**NOTE**: This clones the template into the `definitions` directory.

Build the image

```bash
$ bundle exec veewee vbox build 'oraclelinux-7.2-x86_64'
# Enable debug mode output
$ bundle exec veewee vbox build 'oraclelinux-7.2-x86_64' --debug
```

Validate the build

```bash
$ bundle exec veewee vbox validate 'oraclelinux-7.2-x86_64'
```

Export the base box

```bash
$ bundle exec veewee vbox export 'oraclelinux-7.2-x86_64'
```

Done, `oraclelinux-7.2-x86_64.box` should be created in veewee root directory, distribute and consume it using vagrant, have fun ;-)
