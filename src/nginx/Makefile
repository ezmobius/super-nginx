
default:	build

clean:
	rm -rf Makefile objs

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

upgrade:
	/Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/sbin/nginx -t

	kill -USR2 `cat /Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs/nginx.pid`
	sleep 1
	test -f /Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs/nginx.pid.oldbin

	kill -QUIT `cat /Users/ez/projects/nginx-monster-build/src/nginx/../../super-nginx/logs/nginx.pid.oldbin`
