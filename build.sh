#!/bin/bash



if [ "$1" == "--help" ]; then
  echo "usage: ./build.sh [--with-luajit]"
  echo "if you add the optional --with-luajit flag luajit-beta6"
  echo "will be built and installed in /usr/local with 'batteries included'"
  echo "WARNING: this will also blow away the old luajit install you have"
  echo "in /usr/local in order to get a for sure clean build"
fi;


here=`pwd`

if [ "$1" == "--with-luajit" ]; then
  ./src/build-lua.sh cleanup
fi;

cd $here

export LUAJIT_INC='/usr/local/include/luajit-2.0'
export LUAJIT_LIB='/usr/local/lib/lua/5.1'

git submodule init
git submodule update

cp src/config-for-nginx-lua-module src/lua-nginx-module/config

pushd src/nginx-upload-module
git fetch origin 2.2
git checkout 2.2
popd

cd src/nginx
make clean

./_configure && make && make install
status="$?"

cd ../..

echo -e '\n\n = = = = = = = = = = = ='

if [ "$status" == "0" ]; then
  echo nginx build done successfully!
else
  echo "build failed with exit code: $status"
fi;