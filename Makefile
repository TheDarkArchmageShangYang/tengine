
default:	build

clean:
	rm -rf Makefile objs

.PHONY:	default clean

build:
	$(MAKE) -f objs/Makefile

install:
	$(MAKE) -f objs/Makefile install

modules:
	$(MAKE) -f objs/Makefile modules

upgrade:
	/home/fzchen/Ditto/tengine-install/sbin/tengine -t

	kill -USR2 `cat /home/fzchen/Ditto/tengine-install/logs/nginx.pid`
	sleep 1
	test -f /home/fzchen/Ditto/tengine-install/logs/nginx.pid.oldbin

	kill -QUIT `cat /home/fzchen/Ditto/tengine-install/logs/nginx.pid.oldbin`

.PHONY:	build install modules upgrade
