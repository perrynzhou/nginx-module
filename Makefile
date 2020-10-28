all:
	./configure --prefix=/usr/local/nginx --with-debug --with-cc-opt='-ggdb3 -O0' --add-module=/Users/perrynzhou/Source/perryn/nginx-module
	make
	make install