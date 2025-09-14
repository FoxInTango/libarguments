DEPEND_TARGETS += libstring.recursive
ECHO_TARGETS += libstring.echo
libstring.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/libraries/libarguments/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/libraries/libarguments/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
libstring.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/libraries/libarguments/               >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/libraries/libarguments/.make >> /volumes/llama/home/alpine/libraries/libstring/.make/super
	cd /volumes/llama/home/alpine/libraries/libstring/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libstring/.make/super
