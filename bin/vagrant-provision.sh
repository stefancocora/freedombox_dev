#!/bin/bash
set -e

puppet_base='/vagrant/freedombox_puppet/puppet/freedombox'
to_provision='/vagrant/freedombox_puppet/puppet/freedombox/manifests/site.pp'

if [ -f /vagrant/vagrant.pp ] ;
then
  echo 'Found local vagrant.pp - using that instead'
  to_provision='/vagrant/vagrant.pp'
fi

sudo `which puppet` --verbose \
  --manifestdir=${puppet_base}/manifests \
  --modulepath=${puppet_base}/modules \
  ${to_provision}

