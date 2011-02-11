#!/bin/bash

cd src/nginx

./_configure && make && make install

cd ../..

echo -e '\n\n = = = = = = = = = = = ='
echo nginx build done!