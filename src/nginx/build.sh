#!/bin/bash

sudo rm -rf /opt/nginx

./configure \
      --prefix=/opt/nginx
      --add-module='/Users/ez/projects/nginx-monster-build/nginx-eval-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/echo-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/ngx_devel_kit' \
      --add-module='/Users/ez/projects/nginx-monster-build/encrypted-session-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/form-input-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/headers-more-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/lua-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/lua-redis-parser' \
      --add-module='/Users/ez/projects/nginx-monster-build/lua-yajl' \
      --add-module='/Users/ez/projects/nginx-monster-build/nginx-upload-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/xss-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/set-misc-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/ngx_http_upstream_keepalive' \
      --add-module='/Users/ez/projects/nginx-monster-build/redis2-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/rds-json-nginx-module' \
      --add-module='/Users/ez/projects/nginx-monster-build/drizzle-nginx-module'