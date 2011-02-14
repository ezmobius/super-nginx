#!/bin/bash

# have to hand install this one sorry http://www.cmake.org/files/v2.8/cmake-2.8.3-Darwin-universal.tar.gz



if [ "$1" == "cleanup" ]; then
  echo "Cleaning up old luajit install"
  cd /usr/local/share
  sudo rm -rf lua luajit-2.0.0-beta6
  cd /usr/local/lib
  sudo rm -rf  lua luarocks libev* libluajit* libzmq.la libzmq.dylib libzmq.a libzmq.1.dylib 
  sudo  rm -rf /usr/local/bin/luajit
  sudo rm -rf /usr/local/bin/lua* /usr/local/lib/liblua*
fi;

pushd /tmp

echo "Installing libev"
git clone git://github.com/tangyi/libev-mirror.git
pushd libev-mirror
./configure && make && sudo make install
popd
rm -rf libev-mirror

echo "Installing zeromq"
curl -O "http://download.zeromq.org/zeromq-2.1.0.tar.gz"
tar xzf zeromq-2.1.0.tar.gz
pushd zeromq-2.1.0
./configure && make && sudo make install
popd
rm -rf zeromq-2.1.0.tar.gz zeromq-2.1.0

echo "Installing lua-jit"
curl -O "http://luajit.org/download/LuaJIT-2.0.0-beta6.tar.gz"
tar xzf LuaJIT-2.0.0-beta6.tar.gz
pushd LuaJIT-2.0.0-beta6
make 
sudo make install
popd
sudo rm -rf luajit-2.0 LuaJIT-2.0.0-beta6.tar.gz LuaJIT-2.0.0-beta6
sudo ln -sf luajit-2.0.0-beta6 /usr/local/bin/luajit

echo "Installing luarocks"
curl -O "http://luarocks.org/releases/luarocks-2.0.4.1.tar.gz"
tar xzf luarocks-2.0.4.1.tar.gz
pushd luarocks-2.0.4.1
./configure --lua-suffix=jit && make && sudo make install
popd
rm -rf luarocks-2.0.4.1.tar.gz luarocks-2.0.4.1

echo "Installing lua_handlers with zeromq, nixio and http capabilities"

curl -O "https://github.com/brimworks/lua-ev/raw/master/rockspec/lua-ev-scm-1.rockspec"
sudo luarocks install lua-ev-scm-1.rockspec
sudo luarocks install luasocket

curl -O "https://github.com/Neopallium/lua-handlers/raw/master/lua-handler-scm-0.rockspec"
sudo luarocks install lua-handler-scm-0.rockspec

curl -O "https://github.com/brimworks/lua-http-parser/raw/master/lua-http-parser-scm-0.rockspec"
sudo luarocks install lua-http-parser-scm-0.rockspec

curl -O "https://github.com/Neopallium/lua-handlers/raw/master/lua-handler-http-scm-0.rockspec"
sudo luarocks install lua-handler-http-scm-0.rockspec

curl -O "https://github.com/Neopallium/nixio/raw/master/nixio-scm-0.rockspec"
sudo luarocks install nixio-scm-0.rockspec

curl -O "https://github.com/Neopallium/lua-handlers/raw/master/lua-handler-nixio-scm-0.rockspec"
sudo luarocks install lua-handler-nixio-scm-0.rockspec

curl -O "https://github.com/iamaleksey/lua-zmq/raw/master/rockspecs/lua-zmq-scm-0.rockspec"
sudo luarocks install lua-zmq-scm-0.rockspec

curl -O "https://github.com/Neopallium/lua-handlers/raw/master/lua-handler-zmq-scm-0.rockspec"
sudo luarocks install lua-handler-zmq-scm-0.rockspec

echo "**************************************************************"
echo "Installing enough rocks to make this luajit 'batteries included'"

sudo luarocks install cl
sudo luarocks install config
sudo luarocks install copas
sudo luarocks install coxpcall
sudo luarocks install dado
sudo luarocks install date
sudo luarocks install densearrays
sudo luarocks install diff
sudo luarocks install htk
sudo luarocks install json4lua
sudo luarocks install lbase64
sudo luarocks install lbci
sudo luarocks install leg
sudo luarocks install loop
sudo luarocks install lpack
sudo luarocks install lpc
sudo luarocks install lpeg
sudo luarocks install lposix
sudo luarocks install lpty
sudo luarocks install lrandom
sudo luarocks install lrexlib-pcre
sudo luarocks install lsqlite3
sudo luarocks install lua-coat
sudo luarocks install lua-coatpersistent
sudo luarocks install lua-iconv
sudo luarocks install lua-spore
sudo luarocks install lua-testmore
sudo luarocks install lua-tinycdb
sudo luarocks install lua-xmlreader
sudo luarocks install lua2json
sudo luarocks install lua_signal
sudo luarocks install luabins
sudo luarocks install luabitop
sudo luarocks install luacov
sudo luarocks install luacrypto
sudo luarocks install luadaemon
sudo luarocks install luadate
sudo luarocks install luadoc
sudo luarocks install luaexpat
sudo luarocks install luafilesystem
sudo luarocks install luajson
sudo luarocks install lualogging
sudo luarocks install luaprofiler
sudo luarocks install luasec
sudo luarocks install luasoap
sudo luarocks install luasolidstate
sudo luarocks install luasql-sqlite3
sudo luarocks install luasyslog
sudo luarocks install lunit
sudo luarocks install lzlib
sudo luarocks install md5
sudo luarocks install oauth
sudo luarocks install objectlua
sudo luarocks install penlight
sudo luarocks install redis-lua
sudo luarocks install remdebug
sudo luarocks install rings
yes | sudo luarocks install sha2
sudo luarocks install slncrypto
sudo luarocks install sociallua
sudo luarocks install stdlib
sudo luarocks install stringy
sudo luarocks install struct
sudo luarocks install tamale
sudo luarocks install telescope
sudo luarocks install tlua
sudo luarocks install twitter
sudo luarocks install vararg
sudo luarocks install webrocks
sudo luarocks install wsapi
sudo luarocks install wsapi-fcgi
popd

echo "*************************************************************"
echo "You now have a pretty kick ass luajit setup with bateries included"
echo "Meaning most good libraris are already prebuilt in and ready to use."
echo "There may have been an issue with the http_parser but this will be fixed in the next script"