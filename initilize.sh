#!/bin/bash

set -e

yum update -y
yum install curl
yum install gcc-c++ patch readline readline-devel zlib zlib-devel
yum install libyaml-devel libffi-devel openssl-devel make 
yum install bzip2 autoconf automake libtool bison iconv-devel
curl -L get.rvm.io | bash -s stable

