#!/bin/bash

set -e

yum update -y
yum install -y curl
yum install -y gcc-c++ patch readline readline-devel zlib zlib-devel
yum install -y libyaml-devel libffi-devel openssl-devel make 
yum install -y nodejs bzip2 autoconf automake libtool bison iconv-devel
curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
curl -L get.rvm.io | bash -s stable
`source /etc/profile.d/rvm.sh`
rvm install 2.1.2
rvm use 2.1.2
gem install rails --version 4.2.0
