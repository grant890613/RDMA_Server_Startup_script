#!/bin/bash

pt-get -qq update && apt-get -qq upgrade
apt-get --yes --force-yes install git
apt-get --yes --force-yes install build-essential
apt-get --yes --force-yes install cmake
apt-get --yes --force-yes install gcc
apt-get --yes --force-yes install libudev-dev
apt-get --yes --force-yes install libnl-3-dev
apt-get --yes --force-yes install libnl-route-3-dev
apt-get --yes --force-yes ninja-build
apt-get --yes --force-yes pkg-config
apt-get --yes --force-yes valgrind
apt-get --yes --force-yes python3-dev
apt-get --yes --force-yes cython3
apt-get --yes --force-yes python3-docutils
apt-get --yes --force-yes pandoc
apt-get --yes --force-yes net-tools
apt-get --yes --force-yes perftest
apt-get --yes --force-yes rdmacm-utils
apt-get --yes --force-yes libjudy-dev
apt-get --yes --force-yes libgmp-dev
apt-get --yes --force-yes libpcap-dev
apt-get --yes --force-yes libboost-dev
apt-get --yes --force-yes libboost-test-dev
apt-get --yes --force-yes libboost-program-options-dev
apt-get --yes --force-yes libboost-system-dev
apt-get --yes --force-yes libboost-filesystem-dev
apt-get --yes --force-yes libboost-thread-dev
apt-get --yes --force-yes libevent-dev
apt-get --yes --force-yes libtool
apt-get --yes --force-yes flex
apt-get --yes --force-yes bison
apt-get --yes --force-yes g++
apt-get --yes --force-yes libssl-dev
apt-get --yes --force-yes libnanomsg-dev
apt-get --yes --force-yes libffi-dev
apt-get --yes --force-yes python3-pip
#sudo pip install nnpy
#sudo pip install --upgrade setuptools

git clone https://github.com/linux-rdma/rdma-core.git
cd rdma-core/
bash build.sh
