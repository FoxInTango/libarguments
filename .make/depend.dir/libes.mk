DEPEND_TARGETS += libes.recursive
ECHO_TARGETS += libes.echo
libes.recursive:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/ && make recursive && make install
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
libes.echo:
	@echo SUPER_MAKE_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/               >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	@echo SUPER_MAKE_CONFIG_DIR=/mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libarguments/.make >> /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
	cd /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/ && make echo
	-rm /mnt/d/CORE_WEB_SYSTEM_WEB/alpine/libraries/libes/.make/super
