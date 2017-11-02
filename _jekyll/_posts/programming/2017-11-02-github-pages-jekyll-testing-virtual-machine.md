---
layout: post
title: "Creating a Testing Environment for Jekyll Websites"
description: "How to test a Jekyll site locally."
category: programming
tags:
    - Jekyll
    - Github Pages
    - Vagrant
    - Virtual Machine
    - Github
---

If you are using [Jekyll](https://jekyllrb.com/) to create a website, here are instructions to setup a [Vagrant](https://app.vagrantup.com/boxes/search) virtual machine for testing your Jekyll site locally.

### Step 0: Create the Vagrant VM

#### Part A: Downloading the VM

To create an [Ubuntu](https://app.vagrantup.com/ubuntu/boxes/trusty64) VM, do:

```shell
vagrant init ubuntu/trusty64
vagrant up
```

#### Part B: Configuring the VM

We need to forward a port from the VM to the host machine so that you can open the browser on your host machine and see the Jekyll site. To do this, paste the code below into the `Vagrantfile` in the current directory:

```ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 4000, host: 4000
end
```

After you have done this, reload the VM and ssh into it:

```shell
vagrant reload
vagrant ssh
```

### Step 1: Install Necessary Packages

To install the packages required for running Jekyll locally, run:

```shell
sudo apt-get update;
sudo apt-get -y install git;
sudo apt-add-repository ppa:brightbox/ruby-ng;
sudo apt-get update;
sudo apt-get install -y ruby2.3 ruby2.3-dev;
# this is required for nokogiri
sudo apt-get install -y libxslt-dev libxml2-dev zlib1g-dev
ruby --version
sudo gem install bundler

# install nodejs as the javascript runtime environment
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -;
sudo apt-get install -y nodejs;
```

### Step 2: Clone Your Project

Clone the repository with the Jekyll site you would like to test:

```shell
cd /vagrant/
# clone your own project below
git clone https://github.com/fhightower/fhightower.github.io.git
cd fhightower.github.io/
```

### Step 3: Run Jekyll!

Before you do this, you should make sure your repository has a `Gemfile` as Github [recommends](https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#step-2-install-jekyll-using-bundler). Once this is done, you can run the following to run Jekyll:

```shell
# start with instructions here: https://help.github.com/articles/setting-up-your-github-pages-site-locally-with-jekyll/#step-2-install-jekyll-using-bundler
bundle install
bundle exec jekyll serve --host 0.0.0.0
# to have the site update every time you save a file, run: bundle exec jekyll serve --force_polling --host 0.0.0.0
```

Congratulations! You now have a testing environment for your Jekyll sites. Simple `vagrant up && vagrant ssh` to start the VM where you can test the sites.

Enjoy!
