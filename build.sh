#!/bin/bash

chmod +x build-lua.sh

here=`pwd`

./build-lua.sh cleanup

export LUAJIT_INC='/usr/local/include/luajit-2.0'
export LUAJIT_LIB='/usr/local/lib/lua/5.1'

cd $here

cd src/nginx

./_configure && make && make install

cd ../..

echo -e '\n\n = = = = = = = = = = = ='
echo nginx build done!