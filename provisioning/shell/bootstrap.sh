#!/usr/bin/env bash

yum update -y
/etc/init.d/vboxadd setup
yum install -y puppet
