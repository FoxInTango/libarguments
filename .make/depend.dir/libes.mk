DEPEND_TARGETS += libes.recursive
ECHO_TARGETS += libes.echo
libes.recursive:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/libraries/libarguments/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/libraries/libarguments/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make recursive && make install
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
libes.echo:
	@echo SUPER_MAKE_DIR=/volumes/llama/home/alpine/libraries/libarguments/               >> /volumes/llama/home/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/volumes/llama/home/alpine/libraries/libarguments/.make >> /volumes/llama/home/alpine/libraries/libes/.make/super
	cd /volumes/llama/home/alpine/libraries/libes/ && make echo
	-rm /volumes/llama/home/alpine/libraries/libes/.make/super
