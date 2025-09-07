DEPEND_TARGETS += libecho.recursive
ECHO_TARGETS += libecho.echo
libecho.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/libraries/libarguments/               >> /home/lidali/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/libraries/libarguments/.make >> /home/lidali/alpine/libraries/libecho/.make/super
	cd /home/lidali/alpine/libraries/libecho/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libecho/.make/super
libecho.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/libraries/libarguments/               >> /home/lidali/alpine/libraries/libecho/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/libraries/libarguments/.make >> /home/lidali/alpine/libraries/libecho/.make/super
	cd /home/lidali/alpine/libraries/libecho/ && make echo
	-rm /home/lidali/alpine/libraries/libecho/.make/super
