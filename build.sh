#!/bin/sh

# - install depends tools
# yum -y install git
# yum -y install gcc gcc-c++ autoconf libtool automake make
#

# - clone code
# git clone https://github.com/brinkqiang/ctemplate.git
# pushd ctemplate
# git submodule update --init --recursive
#

libtoolize && aclocal && autoheader && autoconf && automake --add-missing
sh configure


rm -rf build
mkdir build
pushd build
cmake -DCMAKE_BUILD_TYPE=relwithdebinfo ..
make -j1
popd
# popd