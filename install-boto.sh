#!/bin/bash
# Installing boto for aws using python pip

set -x

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

#Install the EPEL-6 yum repository.1. Install the supporting software.

rpm -ivh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

fi

which python >/dev/null 2>&1
if  [ $? != 0 ]; then
  yum -y install python >/dev/null 2>&1
fi

which python-devel >/dev/null 2>&1
if  [ $? != 0 ]; then
  yum -y install python-devel >/dev/null 2>&1
fi

which python-pip >/dev/null 2>&1
if  [ $? != 0 ]; then
  yum -y install python-pip >/dev/null 2>&1
fi

pip install boto
