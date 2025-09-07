DEPEND_TARGETS += libes.recursive
ECHO_TARGETS += libes.echo
libes.recursive:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/libraries/libarguments/               >> /home/lidali/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/libraries/libarguments/.make >> /home/lidali/alpine/libraries/libes/.make/super
	cd /home/lidali/alpine/libraries/libes/ && make recursive && make install
	-rm /home/lidali/alpine/libraries/libes/.make/super
libes.echo:
	@echo SUPER_MAKE_DIR=/home/lidali/alpine/libraries/libarguments/               >> /home/lidali/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/home/lidali/alpine/libraries/libarguments/.make >> /home/lidali/alpine/libraries/libes/.make/super
	cd /home/lidali/alpine/libraries/libes/ && make echo
	-rm /home/lidali/alpine/libraries/libes/.make/super
